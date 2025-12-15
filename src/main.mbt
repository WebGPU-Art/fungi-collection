///|
using @respo_node {respo_attrs}

///|
using @css {respo_style}

///|
let app_store_key : String = "mbt-workflow"

///|
struct App {
  store : Ref[Store]
  mount_target : @dom_ffi.Node
}

///|
fn App::get_store(self : App) -> Ref[Store] {
  self.store
}

///|
fn App::view(
  self : App,
) -> @respo_node.RespoNode[ActionOp] raise @respo_node.RespoCommonError {
  if false {
    raise @respo_node.RespoCommonError("TODO")
  }
  let store = self.store.val
  // @dom_ffi.log("Store to render: " + store.to_json().stringify(indent=2))
  let states = store.get_states()
  div(
    attrs=respo_attrs(class_name=@respo.ui_global),
    style=respo_style(padding=Px(12)),
    [comp_container(states.pick("container"))],
  )
}

///|
fn pick_storage_key() -> String {
  app_store_key
}

///|
/// backup store to local storage before unload
fn App::backup_model_beforeunload(self : App) -> Unit {
  let window = @dom_ffi.window()
  let storage = window.local_storage()
  let p = pick_storage_key()
  let store = self.get_store().val
  let beforeunload = fn(_e : @dom_ffi.BeforeUnloadEvent) {
    let content = store.to_json().stringify(indent=2)
    // util::log!("before unload {} {}", p, content);
    storage.set_item(p, content)
  }
  window.set_onbeforeunload(beforeunload)
}

///|
fn main {
  let app : App = {
    mount_target: @dom_ffi.window()
    .document()
    .query_selector(".app")
    .unwrap()
    .reinterpret_as_node(),
    store: Ref::new(@respo.try_load_storage(app_store_key)),
  }
  app.backup_model_beforeunload()
  @dom_ffi.log("store: " + app.store.val.to_json().stringify(indent=2))
  app.render_loop()
}

///|
fn App::render_loop(self : App) -> Unit {
  let mount_target = self.mount_target
  // let store_to_action = global_store.to_owned()

  let dispatch_action = fn(
    op : ActionOp,
  ) -> Unit raise @respo_node.RespoCommonError {
    // @dom_ffi.log("Action: \{op.to_string()}")
    // @dom_ffi.log("Global store: \{global_store.val.to_json()}")

    // Self::dispatch(store_to_action.to_owned(), op)?;
    self.store.val.update(op)
    match op {
      Noop => raise @respo_node.RespoCommonError("TODO")
      _ => ()
    }
  }
  let renderer = fn() -> @respo_node.RespoNode[_] raise @respo_node.RespoCommonError {
    self.view()
  }
  let ret = try? @respo.render_node(
    mount_target,
    self.store,
    renderer,
    dispatch_action,
    Some(100),
  )
  match ret {
    Ok(_) => ()
    Err(e) => @dom_ffi.error_log(e.to_string())
  }
}

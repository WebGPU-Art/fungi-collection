///|
struct Store {
  counted : Int
  tasks : Array[Task]
  states : @respo.RespoStatesTree
} derive(ToJson, @json.FromJson)

///|
impl Default for Store with default() -> Store {
  { counted: 0, tasks: [], states: @respo.RespoStatesTree::default() }
}

///|
struct Task {
  id : String
  done : Bool
  content : String
  time : Double
} derive(Default, Eq, Hash, ToJson, @json.FromJson)

///|
enum ActionOp {
  Noop
  StatesChange(@respo.RespoUpdateState)
}

///|
fn ActionOp::default() -> ActionOp {
  Noop
}

///|
impl @respo_node.RespoAction for ActionOp with build_states_action(cursor, a, j) {
  StatesChange({
    cursor,
    data: if a is Some(a) {
      Some(@dom_ffi.js_obscure_to_v(a))
    } else {
      None
    },
    backup: j,
  })
}

///|
fn ActionOp::to_string(self : ActionOp) -> String {
  match self {
    Noop => "Noop"
    StatesChange(state) =>
      "StatesChange(\{state.cursor}  \{state.backup.to_json()})"
  }
}

///|
fn get_states(self : Store) -> @respo.RespoStatesTree {
  self.states
}

///|
/// TODO mutation might break memoization in the future
fn update(self : Store, op : ActionOp) -> Unit {
  match op {
    StatesChange(states) => self.states.set_in_mut(states)
    _ => ()
  }
}

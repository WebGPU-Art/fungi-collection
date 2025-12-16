///|
struct Store {
  counted : Int
  tasks : Array[Task]
  mut states : @respo.RespoStatesTree
} derive(ToJson, Default, @json.FromJson, Eq)

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
} derive(Default)

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
pub impl Show for ActionOp with output(self : ActionOp, logger) {
  let s = match self {
    Noop => "Noop"
    StatesChange(state) =>
      "StatesChange(\{state.cursor} \{state.backup.to_json()})"
  }
  logger.write_string(s)
}

///|
fn Store::get_states(self : Store) -> @respo.RespoStatesTree {
  self.states
}

///|
/// TODO mutation might break memoization in the future
fn Store::update(self : Store, op : ActionOp) -> Unit {
  match op {
    StatesChange(states) => self.states = self.states.set_in(states)
    _ => ()
  }
}

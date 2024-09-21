pub type Direction {
  Input
  Output
  OutputOd
}

pub type Level {
  Low
  High
}

@external(erlang, "gleam_atomvm", "set_pin_mode_with_result")
pub fn set_pin_mode(pin: Int, direction: Direction) -> Result(Int, Nil)

@external(erlang, "gleam_atomvm", "digital_write_with_result")
pub fn digital_write(pin: Int, level: Level) -> Result(Int, Nil)

import gleam/int
import gleam/io

import gleam_atomvm
import gleam_atomvm/gpio

pub fn main() {
  io.println("Hello from internalapp!")
  case gleam_atomvm.get_system_platform() {
    gleam_atomvm.Esp32 -> "esp32"
    _ -> "other"
  }
  |> io.println

  case gpio.set_pin_mode(2, gpio.Output) {
    Ok(pid) -> "set_pin_mode on" <> int.to_string(pid)
    Error(_) -> "error on pin mode exec"
  }

  case gpio.digital_write(2, gpio.High) {
    Ok(pid) -> "digital_write high" <> int.to_string(pid)
    Error(_) -> "error on digital_write"
  }
}

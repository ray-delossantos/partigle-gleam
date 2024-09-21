# Partigle (AtomVM experiments)

## Example running on ESp32 DevBoard. 

### It fails a lot because it does not have enough resouces to handle the erlang-shipment generated (More that 512kb in RAM that is not available in this board).

The example is based on the example code in:

https://github.com/atomvm/atomvm_examples/blob/master/erlang/blinky/src/blinky.app.src

**without the blinking :)**

```term
    rebar3 esp32_flash -p /dev/tty.usbserial-0001 
```

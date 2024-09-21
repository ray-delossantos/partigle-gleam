-module(gleam_atomvm).

-export([set_pin_mode_with_result/2, digital_write_with_result/2]).


% start_with_result() ->
%     case gpio:start() of
%         ok -> {ok, nil};
%         error -> {error, nil};
%         _ -> {error, nil}
%     end.


set_pin_mode_with_result(_Pin, _Direction) ->
    case gpio:set_pin_mode(_Pin, _Direction) of
        ok -> {ok, _Pin};
        error -> {error, nil};
        _ -> {error, nil}
    end.

digital_write_with_result(_Pin, _Level) ->
    case gpio:digital_write(_Pin, _Level) of
        ok -> {ok, _Pin};
        error -> {error, nil};
        _ -> {error, nil}
    end.


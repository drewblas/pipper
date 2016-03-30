# Pipper

Pipper provides the `<|>` operator as a shorthand macro:

```elixir
import Pipper

# This:
list = [1,2,3]
list <|> Enum.map(&(&1 * 2))
IO.inspect list # list == [2,4,6]

# Equivalent to:
list = [1,2,3]
list = list |> Enum.map(&(&1 * 2))
IO.inspect list
```

## Wishes and Dreams

`=|>` would be a better operator, to make the assignment clearer.  But it's not available.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add pipper to your list of dependencies in `mix.exs`:

        def deps do
          [{:pipper, "~> 1.0.0"}]
        end

  2. Ensure pipper is started before your application:

        def application do
          [applications: [:pipper]]
        end

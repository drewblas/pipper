defmodule Pipper do
  @moduledoc """
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
  """

  @doc """
  `obj <|> func` is equivalent to `obj = obj |> func`
  """
  defmacro left <|> right do
    quote do
      unquote(left) = unquote(left) |> unquote(right)
    end
  end
end

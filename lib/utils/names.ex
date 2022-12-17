defmodule Mrvl.Names do
  @moduledoc """
  These names are for testing purposes only, make sure to use custom names later on.

  Just remember, this is a minimal viable product, so we are not going to worry about it here.
  Something to reproduce the big shit.
  """

  @type nametype :: String.t()

  @spec random_name() :: nametype
  @spec random_lastname() :: nametype

  def random_name() do
    [
      "John",
      "Jane",
      "Bob",
      "Alice",
      "Jack",
      "Jill",
      "Tom",
      "Sally",
      "Mike",
      "Molly",
      "Coly",
      "Maddy"
    ]
    |> Enum.random()
  end

  def random_lastname() do
    [
      "Smith",
      "Jones",
      "Brown",
      "Johnson",
      "Williams",
      "Miller",
      "Davis",
      "Wilson",
      "Moore",
      "Taylor"
    ]
    |> Enum.random()
  end
end

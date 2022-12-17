defmodule Mrvl.Passwords do
  @moduledoc """
  Generates random access tokens (passwords) for users.
  """
  def access_token do
    :crypto.strong_rand_bytes(16) |> Base.encode16()
  end
end

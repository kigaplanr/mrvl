defmodule Custom.Production do
  defstruct [:name, :lastname, :birthday, :password]

  alias Mrvl.Passwords

  @moduledoc """
  This is a production-like example of how to create a user in a production environment.

  Usage:
  iex(2)> Custom.Production.create_user("James", "Dane", "11/12/2022")
  """

  def create_user(name, lastname, birthday) do
    %Custom.Production{
      name: name,
      lastname: lastname,
      birthday: birthday,
      password: Passwords.access_token()
    }
  end
end

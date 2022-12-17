defmodule Mrvl do
  defstruct [:name, :lastname, :birthday, :password]

  alias Mrvl.Passwords

  def create_user(name, lastname, birthday) do
    %Mrvl{
      name: name,
      lastname: lastname,
      birthday: birthday,
      password: Passwords.access_token()
    }
  end
end

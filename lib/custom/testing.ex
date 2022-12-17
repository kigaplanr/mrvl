defmodule Mrvl.Testing do
  defstruct [:name, :lastname, :birthday]

  @moduledoc """
  A custom module to generate random user data
  """

  alias Mrvl.{
    Birthday,
    Names,
    Passwords
  }

  def random_user_data do
    %Mrvl.Testing{
      name: random_name(),
      lastname: random_lastname(),
      birthday: random_birthday()
    }
  end

  def random_name() do
    Names.random_name()
  end

  def random_lastname() do
    Names.random_lastname()
  end

  def random_birthday() do
    Birthday.random_birthday()
  end

  def random_password do
    Passwords.access_token()
  end

  def calculate_age() do
    random_birthday()
    |> Date.from_iso8601()
    |> case do
      {:ok, date} -> Date.diff(Date.utc_today(), date) |> div(365)
      _ -> 0
    end
  end
end

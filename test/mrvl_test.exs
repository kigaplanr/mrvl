defmodule MrvlTest do
  use ExUnit.Case
  doctest Mrvl

  test "generate a random user" do
    user = Mrvl.create_user("James", "Dane", "11/12/2022")
    assert user.name == "James"
    assert user.lastname == "Dane"
    assert user.birthday == "11/12/2022"
    assert user.password != nil
  end
end

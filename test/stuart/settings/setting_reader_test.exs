defmodule Stuart.ConfigTest do
  use ExUnit.Case

  alias Stuart.Settings.SettingReader

  test "read setting config" do
    assert SettingReader.read_settings == "error"
  end
end
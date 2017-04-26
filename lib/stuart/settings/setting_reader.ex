defmodule Stuart.Settings.SettingReader do
    def read_settings() do
      Application.get_env(:stuart, :user_agent)
    end

end
defmodule Stuart.HttpClient.HTTPoisonClient do
    alias HTTPoison.Response

    def get(url) do
        with {:ok, response} <- HTTPoison.get(url),
            %Response{body: body} = response,
        do: {:ok, body}
    end
end
defmodule Stuart.HttpClient.HTTPoisonClient do
    alias HTTPoison.Response

    def get(url) do
        HTTPoison.get(url)
        |> parse_response
    end

    def get(url, user_agent) do
        HTTPoison.get(url, user_agent)
        |> parse_response
    end

    defp parse_response(get_response) do
        with {:ok, response} <- get_response,
            %Response{status_code: 200, body: body} = response,
        do: {:ok, body}
    end
end
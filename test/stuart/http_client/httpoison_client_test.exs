defmodule Stuart.HttpClient.HTTPoisonClientTest do
  use ExUnit.Case

  alias Stuart.HttpClient.HTTPoisonClient

  doctest HTTPoisonClient

  test "get my blog and return the body of response" do
    {:ok, body} = HTTPoisonClient.get("http://zhangyi.farbox.com")
    assert String.contains?(body, "<title>张逸</title>")
  end

  test "get zhihu content giving user agent and return 200" do
    user_agent = [{"User-agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"}]
    {:ok, body} = HTTPoisonClient.get("https://www.zhihu.com", user_agent)
    assert String.contains?(body, "<title>知乎")
  end
end
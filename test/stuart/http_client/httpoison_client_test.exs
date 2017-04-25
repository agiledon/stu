defmodule Stuart.HttpClient.HTTPoisonClientTest do
  use ExUnit.Case

  alias Stuart.HttpClient.HTTPoisonClient

  doctest HTTPoisonClient

  test "get my blog and return the body of response" do
    {:ok, body} = HTTPoisonClient.get("http://zhangyi.farbox.com")
    assert String.contains?(body, "<title>张逸</title>")
  end
end
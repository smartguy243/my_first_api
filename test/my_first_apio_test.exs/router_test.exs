defmodule MyFirstApioTest.RouterTest do
    use ExUnit.Case, async: true

    use Plug.Test

    @opts MyFirstApi.Router.init([])

    test "return ok" do
        build_conn = conn(:get, "/")
        conn = MyFirstApi.Router.Call(build_conn, @opts)

        assert conn.state == :sent
        assert conn.status == 200
        assert conn.resp_body == "OK"
    end
    
end
defmodule MyFirstApi.Router do
    use Plug.Router

    plug(Plug.Logger)

    plug(:match)

    plug(Plug.Parsers,
        parsers: [:json],
        pass: ["application/json"],
        json_decoder: Jason)
end
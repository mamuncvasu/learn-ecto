# Minimum Elixir to nails Phoenix Framework
    
    - Variables (= is pattern matching, not assignment)
    - Atoms (:ok, :error)
    - Strings
    - Lists
    - Tuples ({:ok, value})
    - Maps (%{key: value})
    - ecto and schema

## Use struct in schema
  
    defmodule User do
      defstruct [:id, :name, :age]
    end
    
## Use Module and Case in a Controller

    defmodule UserController do
      def show(params) do
        case Accounts.get_user(params["id"]) do
          {:ok, user} ->
            "User found: #{user.name}"
    
          {:error, reason} ->
            "Error: #{reason}"
        end
      end
    end
## Pipe operator in Phoenix

    defmodule Example do
      def run do
        %{"id" => 1}
        |> UserController.show()
        |> IO.puts()
      end
    end
    
## Explain Case statement

    case Accounts.get_user(id) do
      {:ok, user} ->
        render(conn, :show, user: user)
    
      {:error, _} ->
        redirect(conn, to: "/")
    end
    
    - Accounts.get_user(id) eta run korle jodi "success" hoy, output ke "user" e assign korbe.
    - jodi "failed" hoy, output ke "_" e ignore korbe.
    - case checks the "result" and "pattern" matches on it.

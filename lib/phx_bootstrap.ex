defmodule PhxBootstrap do
  @moduledoc """
  Documentation for `PhxBootstrap`.
  """

  defmacro __using__(_opts) do
    quote do
      alias PhxBootstrap.Form, as: BF
    end
  end
end

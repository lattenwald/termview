defmodule Termview do
  def main(args) do
    args |> parse_opts |> process
  end

  def parse_opts([fname]), do: fname
  def parse_opts(_), do: raise "invalid arguments"

  def process(fname) do
    File.read!(fname)
    |> :erlang.binary_to_term
    |> IO.inspect(limit: :infinity)
  end
end

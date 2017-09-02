defmodule Solution do

    defp read_line() do
        IO.gets("") |> String.trim
    end

    def main() do
        read_line()
        array = read_line() |> String.split(" ") |> Enum.map(&String.to_integer/1)
        IO.puts Enum.sum(array)
    end

end

Solution.main()
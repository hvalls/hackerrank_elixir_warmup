defmodule Solution do

    def read_numbers do
        IO.gets("")
        IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(&String.to_integer/1)
    end

    def main do
        read_numbers()
        |> Enum.reduce(fn
            n, sum -> sum + n end)
        |> IO.puts
    end

end

Solution.main()
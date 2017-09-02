defmodule Solution do

    defp read_n do
        IO.gets("") |> String.trim |> String.to_integer
    end

    defp read_numbers do
        IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(&String.to_integer/1)
    end

    def main do
        n = read_n()
        numbers = read_numbers()
        positive_count = numbers |> Enum.filter(fn x -> x > 0 end) |> Enum.count()
        negative_count = numbers |> Enum.filter(fn x -> x < 0 end) |> Enum.count()
        zero_count = numbers |> Enum.filter(fn x -> x == 0 end) |> Enum.count()
        IO.puts(positive_count/n)
        IO.puts(negative_count/n)
        IO.puts(zero_count/n)
    end

end

Solution.main()
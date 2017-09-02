defmodule Solution do

    defp read_numbers do
        IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(&String.to_integer/1)
    end

    def main do
        numbers = read_numbers() |> Enum.sort

        min_sum = numbers |> Enum.with_index |> Enum.reduce(0, fn
            {_, index}, sum when index == length(numbers) - 1 -> sum
            {num, _}, sum -> sum + num
        end)

        max_sum = numbers |> Enum.reverse |> Enum.with_index |> Enum.reduce(0, fn
            {_, index}, sum when index == length(numbers) - 1 -> sum
            {num, _}, sum -> sum + num
        end)

        IO.puts(Integer.to_string(min_sum) <> " " <> Integer.to_string(max_sum))
    end

end

Solution.main()
defmodule Solution do

    defp read_candle_heights do
        IO.gets("")
        IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(&String.to_integer/1)
    end

    def main do
        heights = read_candle_heights() |> Enum.sort |> Enum.reverse
        max_height = Enum.at(heights, 0)
        max_candles = heights
        |> Enum.reduce_while(0, fn height, count ->
            if height < max_height, do: {:halt, count}, else: {:cont, count + 1}
        end)

        IO.puts max_candles
    end

end

Solution.main()
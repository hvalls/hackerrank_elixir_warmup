defmodule Solution do

    defp read_n do
        IO.gets("") |> String.trim |> String.to_integer
    end

    def main do

        n = read_n()

        staircase = for index <- 1..n do
            String.duplicate(" ", n - index) <> String.duplicate("#", index)
        end

        staircase |> Enum.each(&IO.puts/1)
    end


end

Solution.main()
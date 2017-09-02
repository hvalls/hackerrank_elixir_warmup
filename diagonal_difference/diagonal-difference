defmodule Solution do

    def read_row do
        IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(&String.to_integer/1)
    end

    def read_matrix do

        n = IO.gets("") |> String.trim |> String.to_integer

        matrix = for _ <- 1..n do
            read_row()
        end

        primary_diagonal_sum = matrix
        |> Enum.with_index
        |> Enum.reduce(0, fn
            {row, index}, diagonal -> diagonal + Enum.at(row, index) end)

        secondary_diagonal_sum = matrix
        |> Enum.with_index
        |> Enum.reduce(0, fn
            {row, index}, diagonal -> diagonal + Enum.at(row, length(row) - 1 - index) end)

        abs(primary_diagonal_sum - secondary_diagonal_sum) |> IO.puts

    end

    def main do
        read_matrix()
    end


end

Solution.main()
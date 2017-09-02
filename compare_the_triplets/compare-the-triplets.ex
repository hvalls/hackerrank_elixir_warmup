defmodule Solution do

    defp read_triplet do
        IO.gets("") |> String.trim |> String.split(" ") |> Enum.map(&String.to_integer/1)
    end

    def main do
        alice_triplet = read_triplet()
        bob_triplet = read_triplet()

        {alice_score, bob_score} = Enum.zip(alice_triplet, bob_triplet)
        |> Enum.reduce({0, 0}, fn
            {a, b}, {as, bs} when a > b -> {as + 1, bs}
            {a, b}, {as, bs} when b > a -> {as, bs + 1}
            {_, _}, {as, bs} -> {as, bs} end)

        IO.puts(Integer.to_string(alice_score) <> " " <> Integer.to_string(bob_score))
    end

end

Solution.main()
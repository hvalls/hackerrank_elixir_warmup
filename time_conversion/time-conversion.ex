defmodule Solution do

    defp read_time do
        IO.gets("") |> String.trim |> String.split_at(8) |> fn
            {time, format} -> {time |> String.split(":"), format}
        end.()
    end

    def time_to_string({h, m, s}) do
        Enum.join([h, m, s], ":")
    end

    def main do
        read_time()
        |> fn
            {["12", m, s], "AM"} -> {"00", m, s}
            {["12", m, s], "PM"} -> {"12", m, s}
            {[h, m, s], "AM"} -> {h, m, s}
            {[h, m, s], "PM"} -> {String.to_integer(h) + 12, m, s} end.()
        |> time_to_string
        |> IO.puts
    end


end

Solution.main()
defmodule Sparkel do

  @ticks  ~w(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)
  @default_separator ''

  def sparkline(numbers) when is_list(numbers) do
    normalized_numbers =
      numbers
      |> rounded_numbers
      |> normalize_numbers

    one_step = step_height(normalized_numbers)

    normalized_numbers
    |> Enum.map(&(calculate_step(&1, one_step)))
    |> Enum.join
  end

  def sparkline([]) do
    []
  end

  defp calculate_step(number, one_step) do
    Enum.at(@ticks, _round(number/one_step))
  end

  defp normalize_numbers(numbers) do
    Enum.map(numbers, &(&1 - Enum.min(numbers)))
  end

  def rounded_numbers(list) do
    Enum.map(list, &_round/1)
  end

  defp steps do
    Enum.count(@ticks) - 1
  end

  defp step_height(numbers) do
    {min, max} = Enum.min_max(numbers)
    step = (max-min)/steps

    if step == 0, do: 1, else: step
  end

  defp _round(number) when is_float(number)  do
    round(Float.floor(number))
  end

  defp _round(number) when is_integer(number)  do
    number
  end

end

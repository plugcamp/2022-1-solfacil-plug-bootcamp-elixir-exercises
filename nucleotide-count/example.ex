defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  def count(strand, nucleotide) when nucleotide in @nucleotides do
    Enum.count(strand, &(&1 == nucleotide))
  end

  def histogram(strand) do
    Enum.into(@nucleotides, %{}, &{&1, count(strand, &1)})
  end
end

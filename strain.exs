defmodule Strain do
  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns true.

  Do not use `Enum.filter`.
  """
  @spec keep(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def keep(list, fun) do
  #test list will be a list of true/false that can be used to identify what to keep
  #testlist = list |> Enum.map(fun)
  #walklist(list, &fun/1)
  #filterlist(list, testlist)
  check(list, fun)
  end

  def check([], _func) do [] end

  def check([hd|tl], func) do

    if ((func.(hd))== true) do 
      [hd]++check(tl, func) 
    else 
      check(tl,func)
    end
    
  end

  def filter([], _fun) do [] end
    


  def filter([hd|tl], func) do
    if ((func.(hd))== true) do 
      filter(tl,func)
    else 
      [hd]++filter(tl, func) 
    end
  end
  #def walklist([], func), do: []

  #def walklist([head|[]], func) do
  #process the sole/final item
  #  if ((head |> func) == 1), do: [head]

  #end

  #def walklist([head|tail], func) do
  # something
  #head |> func 
  #walklist(tail, func)
  #end

  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns false.

  Do not use `Enum.reject`.
  """
  @spec discard(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def discard(list, fun) do
    filter(list, fun)
  end
end

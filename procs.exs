defmodule Procs do

  # pid = spawn_link Procs, :hello, [0]
  # send pid, { :crash, :normal}
  def hello(count) do
    receive do
      { :crash, reason} ->
        exit(reason)
      { :quit } ->
        IO.puts("I'm outta here")
      { :add, n} ->
        hello(count + n)
      msg ->
        IO.puts("count: #{count} Hello #{inspect msg}")
        hello(count )
    end
  end
end

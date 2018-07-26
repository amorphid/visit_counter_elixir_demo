defmodule VisitCounter.Counter do
  use GenServer

  #######
  # API #
  #######

  def count() do
    GenServer.call(__MODULE__, :count)
  end

  def increment() do
    GenServer.cast(__MODULE__, :increment)
  end

  def start_link(_) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  #############
  # Callbacks #
  #############

  def init(_) do
    data = %{
      count: 0
    }
    {:ok, data}
  end

  def handle_call(:count, _, data) do
    {:reply, data.count, data}
  end

  def handle_cast(:increment, data) do
    {:noreply, Map.put(data, :count, data.count + 1)}
  end
end

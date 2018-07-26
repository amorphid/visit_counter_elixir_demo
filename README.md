# VisitCounter

It increments & counts via it's public API!

    iex(2)> VisitCount.Counter.count
    0
    iex(3)> VisitCount.Counter.increment
    :ok
    iex(4)> VisitCount.Counter.increment
    :ok
    iex(5)> VisitCount.Counter.increment
    :ok
    iex(6)> VisitCount.Counter.increment
    :ok
    iex(7)> VisitCount.Counter.increment
    :ok
    iex(8)> VisitCount.Counter.increment
    :ok
    iex(9)> VisitCount.Counter.increment
    :ok
    iex(10)> VisitCount.Counter.increment
    :ok
    iex(11)> VisitCount.Counter.count    
    8

It increments & counts via regular messages, too!

    iex(13)> receive do {:count, count} -> count end
    4
    iex(14)> send(VisitCount.Counter, :increment)      
    :increment
    iex(15)> send(VisitCount.Counter, :increment)
    :increment
    iex(16)> send(VisitCount.Counter, :increment)
    :increment
    iex(17)> send(VisitCount.Counter, :increment)
    :increment
    iex(18)> send(VisitCount.Counter, {:count, self()})
    {:count, #PID<0.134.0>}
    iex(19)> receive do {:count, count} -> count end   
    8

And that's all it does!

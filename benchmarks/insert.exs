{:ok, storeId} = :khepri.start()
Application.ensure_all_started(:khepri)

Benchee.run(
  %{
    "insert_root" => fn {_key1, key2, value} ->
      :ok = :khepri.insert(storeId, [key2], value)
    end,
    "insert_5deep" => fn {key1, key2, value} ->
      :ok = :khepri.insert(storeId, [:aaa, :bbb, :ccc, key1, key2], value)
    end
  },
  warmup: 0.1,
  time: 3.0,
  memory_time: 3.0,
  inputs: %{
    "10 bytes value" => List.first(Enum.take(StreamData.binary(length: 10), 1)),
    "100 bytes value" => List.first(Enum.take(StreamData.binary(length: 100), 1)),
    "1000 bytes value" => List.first(Enum.take(StreamData.binary(length: 1000), 1)),
    "10000 bytes value" => List.first(Enum.take(StreamData.binary(length: 10000), 1))
    # "10 elements list" => Enum.to_list(1..10),
    # "1000 elements list" => Enum.to_list(1..1_000)
  },
  before_scenario: fn input ->
    :ok = :khepri.clear_store(storeId)
    input
  end,

  # generate a random key
  before_each: fn value ->
    {Enum.random([:aaa, :bbb, :ccc, :ddd, :eee, :fff, :ggg, :hhh, :iii, :jjj]),
     Integer.to_string(Enum.random(1..1_000_000)), value}
  end,
  formatters: [
    Benchee.Formatters.Console,
    {Benchee.Formatters.Markdown,
     file: "results/insert.md",
     description: """
     This benchmark compares `khepri:insert` with different value sizes.
     """}
  ]
)

{:ok, storeId} = :khepri.start()
Application.ensure_all_started(:khepri)

value_10B = List.first(Enum.take(StreamData.binary(length: 10), 1))

Benchee.run(
  %{
    "update_root" => fn _ -> :ok = :khepri.insert(storeId, [:root], value_10B) end,
    "update_5deep" => fn _ ->
      :ok = :khepri.insert(storeId, [:aaa, :bbb, :ccc, :ddd, :eee], value_10B)
    end
  },
  warmup: 0.1,
  time: 3.0,
  memory_time: 3.0,
  before_scenario: fn _ ->
    :ok = :khepri.clear_store(storeId)

    # insert some data first
    Enum.each(1..1_000, fn x ->
      :ok = :khepri.insert(storeId, [:root, Integer.to_string(x)], value_10B)

      :ok = :khepri.insert(storeId, [:aaa, :bbb, :ccc, :ddd, Integer.to_string(x)], value_10B)
    end)
  end,
  formatters: [
    Benchee.Formatters.Console,
    {Benchee.Formatters.Markdown,
     file: "results/update.md",
     description: """
     This benchmark compares `khepri:insert` for an existing key, at the root of a tree and 5 levels deep
     """}
  ]
)

{:ok, storeId} = :khepri.start()
Application.ensure_all_started(:khepri)

value_10B = List.first(Enum.take(StreamData.binary(length: 10), 1))

Benchee.run(
  %{
    "has_data_root" => fn _ -> true = :khepri.has_data(storeId, [:root]) end,
    "does_not_exist_root" => fn _ -> false = :khepri.has_data(storeId, [:miss]) end,
    "has_data_5deep" => fn _ -> true = :khepri.has_data(storeId, [:aaa, :bbb, :ccc, :ddd, :eee]) end,
    "does_not_exist_5deep" => fn _ -> false = :khepri.has_data(storeId, [:aaa, :bbb, :ccc, :ddd, :miss]) end,
    "has_data_10deep" => fn _ -> true = :khepri.has_data(storeId, [:aaa, :bbb, :ccc, :ddd, :eee, :fff, :ggg, :hhh, :iii, :jjj]) end,
    "does_not_exist_10deep" => fn _ -> false = :khepri.has_data(storeId, [:aaa, :bbb, :ccc, :ddd, :eee, :fff, :ggg, :hhh, :iii, :miss]) end
  },
  warmup: 0.1,
  time: 3.0,
  memory_time: 3.0,
  before_scenario: fn _ ->
    :ok = :khepri.clear_store(storeId)

    # data to be checked for existance
    :ok = :khepri.insert(storeId, [:root], value_10B)
    :ok = :khepri.insert(storeId, [:aaa, :bbb, :ccc, :ddd, :eee], value_10B)
    :ok = :khepri.insert(storeId, [:aaa, :bbb, :ccc, :ddd, :eee, :fff, :ggg, :hhh, :iii, :jjj], value_10B)

    # insert some data first
    Enum.each(1..1_000, fn x ->
      :ok = :khepri.insert(storeId, [:root, Integer.to_string(x)], value_10B)
      :ok = :khepri.insert(storeId, [:aaa, :bbb, :ccc, :ddd, Integer.to_string(x)], value_10B)
    end)
  end,
  formatters: [
    Benchee.Formatters.Console,
    {Benchee.Formatters.Markdown,
     file: "results/has_data.md",
     description: """
     This benchmark compares `khepri:has_data` for an existing and non-existing keys, at the root and deep in the tree
     """}
  ]
)

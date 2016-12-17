defmodule ThunderBelt do
    use Application
    def start(_type, _args) do
        ThunderBelt.Supervisor.start_link
    end

    alias ThunderBelt.Repo
    import Ecto.Query
    
    def sample_query do
        query = from a in AccelerateTask, 
        select: {
            a."AccelerateTaskId", 
            a."LocalTaskId",
            a."LocalSubFileIndex",
            a."UserData"
        }
        Repo.all(query)
    end

    def q do
        Repo.all(AccelerateTask)
    end

    def update_record(accelerate_task) do
        user_data = accelerate_task."UserData" |> Poison.decode! 
        user_data_new = Map.put(user_data, "Result", 0)
        user_data_str_new = Poison.encode!(user_data_new)
        changeset = AccelerateTask.changeset(accelerate_task, %{"UserData": user_data_str_new})
        Repo.update(changeset)
        # |> IO.inspect
    end

    def need_rectification(user_data) do
        user_data = user_data |> Poison.decode!
        case user_data["Result"] do
           0  ->
               false
           _ ->
               true
        end
    end
end

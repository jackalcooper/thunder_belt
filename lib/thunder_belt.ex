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
        user_data_new = accelerate_task."UserData"
        changeset = AccelerateTask.changeset(accelerate_task, %{"UserData": user_data_new})
        |> IO.inspect
    end
end

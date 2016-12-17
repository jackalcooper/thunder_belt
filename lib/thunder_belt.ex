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
end

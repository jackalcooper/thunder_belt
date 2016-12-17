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
end

defmodule AccelerateTask do
  use Ecto.Model

  schema "AccelerateTaskMap151297778_superspeed_1_1" do
    field :AccelerateTaskId, :integer
    field :LocalTaskId, :integer
    field :LocalSubFileIndex, :integer
    field :UserData,  :binary
  end
end
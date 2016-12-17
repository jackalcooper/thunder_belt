defmodule ThunderBelt do
    use Application

    def start(_type, _args) do
        ThunderBelt.Supervisor.start_link
    end

    alias ThunderBelt.Repo
    import Ecto.Query
    @db_file_path "/Users/jackalcooper/Downloads/TaskDb.dat"
    def sample_query do
        query = from w in AccelerateTask
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
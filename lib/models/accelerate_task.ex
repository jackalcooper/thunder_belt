defmodule AccelerateTask do
  use Ecto.Schema
  import Ecto.Changeset
  alias AccelerateTask.UserData
  @primary_key {:LocalTaskId, :integer, []}
  schema "AccelerateTaskMap151297778_superspeed_1_1" do
    # field :AccelerateTaskId, :integer
    field :AccelerateTaskId, :integer
    field :LocalSubFileIndex, :integer
    field :UserData, :string
  end
  
  def changeset(task, params \\ :empty) do
    task
    |> cast(params, [], ~w(UserData))
  end
end

# defmodule AccelerateTask.UserData do
#   @derive [Poison.Encoder]
#   defstruct [:CommitGcid, :Message, :Result, :SubId]
# end

# defmodule AccelerateTask.UserData do
#   use Ecto.Schema
#   import Ecto.Changeset
# #   @primary_key {:SubId, :integer, [autogenerate: false]}
# #   @primary_key {:id, :binary_id, [autogenerate: true]}
#   embedded_schema "embedded Item" do
#     field :CommitGcid, :string
#     field :Message, :string
#     field :Result, :integer
#     field :SubId, :integer
#   end

#   def changeset(user_data, params \\ :empty) do
#     user_data
#     |> cast(params, [], ~w(Result))
#     |> IO.inspect
#   end
# end
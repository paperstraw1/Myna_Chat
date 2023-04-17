defmodule Myna.Message do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query

  schema "messages" do
    field :channel, :string
    field :message, :string
    field :name, :string

    timestamps()
  end
  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:name, :message, :channel])
    |> validate_required([:name, :message, :channel])
  end

  def get_messages(channela) do
    Myna.Message
    |> where(channel: ^channela)
    |> limit(20)
    |> order_by(desc: :inserted_at)
    |> Myna.Repo.all()
  end
end

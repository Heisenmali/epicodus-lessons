class CreateDivisions < ActiveRecord::Migration[5.1]
  def change
    create_table(:divisions) do |d|
      d.column(:name, :string)

      d.timestamp
    end
  end
end

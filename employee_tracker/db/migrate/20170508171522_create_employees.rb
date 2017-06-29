class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    # belongs_to(:division)
    create_table(:employees) do |e|
      e.column(:name, :string)
      e.column(:division_id, :integer)

      e.timestamps
    end
  end
end

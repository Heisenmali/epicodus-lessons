class UpdateModels < ActiveRecord::Migration[5.1]
  def change
    change_table :ratings do |t|
      t.belongs_to :movie
      t.belongs_to :user
    end
  end
end

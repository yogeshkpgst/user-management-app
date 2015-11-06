class CreateEnergies < ActiveRecord::Migration
  def change
    create_table :energies do |t|
      t.date :year
      t.float :value

      t.timestamps null: false
    end
  end
end

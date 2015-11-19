class CreateDailyUsages < ActiveRecord::Migration
  def change
    create_table :daily_usages do |t|
      t.integer :utility_no
      t.date :date
      t.float :total_usage
      t.float :total_charge

      t.timestamps null: false
    end
  end
end

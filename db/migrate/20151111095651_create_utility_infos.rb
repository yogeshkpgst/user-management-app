class CreateUtilityInfos < ActiveRecord::Migration
  def change
    create_table :utility_infos do |t|
      t.bigint :utility_no
      t.string :utility_name
      t.string :utility_company

      t.timestamps null: false
    end
  end
end

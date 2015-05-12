class CreateLemurs < ActiveRecord::Migration
  def change
    create_table :lemurs do |t|
      t.string :species
      t.string :region
      t.string :year

      t.timestamps null: false
    end
  end
end

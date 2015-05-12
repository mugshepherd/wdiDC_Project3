class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :link

      t.timestamps null: false
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :pid
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end

class CreateSfoods < ActiveRecord::Migration
  def change
    create_table :sfoods do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :vendor
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end

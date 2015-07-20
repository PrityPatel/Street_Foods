class CreateSfoods < ActiveRecord::Migration
  def change
    create_table :sfoods do |t|
      t.string :item
      t.string :city
      t.string :country
      t.string :vendor
      t.text :description

      t.timestamps
    end
  end
end

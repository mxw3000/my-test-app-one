class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :idx, limit: 16
      t.string :title, limit: 80
      t.text :text
      t.datetime :tbegin
      t.datetime :tend
      t.decimal :price, precision: 10, scale: 2
      t.string :otype, limit: 5
      t.string :ostat, limit: 5
      t.string :seller, limit: 40
      t.integer :vcount
      t.binary :image

      t.timestamps
    end
    add_index :offers, :idx
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.datetime :cdate
      t.references :offer, index: true

      t.timestamps
    end
  end
end

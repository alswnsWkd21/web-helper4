class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.string :carrier
      t.string :main
      t.text :intro

      t.timestamps null: false
    end
  end
end

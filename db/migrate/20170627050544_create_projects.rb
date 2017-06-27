class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :pname
      t.datetime :supportperiod
      t.datetime :deadline
      t.integer :limitmoney
      t.string :planstate
      t.text :pcontent
      t.text :ptag

      t.timestamps null: false
    end
  end
end

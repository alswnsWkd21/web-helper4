class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :pname
      t.string :pageType
      t.datetime :deadline
      t.string :skillType0
      t.string :skillType1
      t.string :skillType2
      t.text :pcontent
    
    
      # t.string :pname
      # t.datetime :supportperiod
      # t.datetime :deadline
      # t.integer :limitmoney
      # t.string :planstate
      # t.text :pcontent
      # t.text :ptag

      t.timestamps null: false
    end
  end
end

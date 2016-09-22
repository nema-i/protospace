class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :catchcopy
      t.string :concept
      t.integer :user_id
      t.timestamps
    end
  end
end

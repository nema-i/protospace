class CreateCapturedimages < ActiveRecord::Migration
  def change
    create_table :capturedimages do |t|
      t.integer :prototype_id
      t.string :image
      t.integer :role
      t.timestamps
    end
  end
end

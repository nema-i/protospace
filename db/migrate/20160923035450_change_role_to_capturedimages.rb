class ChangeRoleToCapturedimages < ActiveRecord::Migration
  def change
    change_column :Capturedimages, :role, :integer, main: 0, sub: 1
  end
end

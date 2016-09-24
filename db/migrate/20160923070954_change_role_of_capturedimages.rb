class ChangeRoleOfCapturedimages < ActiveRecord::Migration
  def change
    change_column :capturedimages, :role, :integer, main: 0, sub: 1
  end
end

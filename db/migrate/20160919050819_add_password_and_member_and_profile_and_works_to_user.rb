class AddPasswordAndMemberAndProfileAndWorksToUser < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :member, :string
    add_column :users, :profile, :text
    add_column :users, :works, :string
  end
end

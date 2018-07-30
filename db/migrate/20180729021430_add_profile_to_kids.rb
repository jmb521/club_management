class AddProfileToKids < ActiveRecord::Migration[5.1]
  def change
    add_column :kids, :profile_id, :integer
    remove_column :kids, :user_id
  end
end

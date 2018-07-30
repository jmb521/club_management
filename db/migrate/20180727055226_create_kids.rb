class CreateKids < ActiveRecord::Migration[5.1]
  def change
    create_table :kids do |t|
      t.column :user_id, :integer
      t.column :kid_name, :string
      t.column :kid_birthday, :string

      t.timestamps
    end
  end
end


#think about how you want to do the profile. Do you want it to be
#user - profile - kids
#user - kids

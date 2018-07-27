class CreateMembershipInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :membership_infos do |t|
      t.column :is_member, :string
      t.column :user_id, :integer
      t.column :membership_paid, :string
      t.timestamps
    end
  end
end

class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.column :user_id, :integer
      t.column :user_birthday, :string
      t.column :spouse, :string
      t.column :spouse_birthday, :string
      t.timestamps
    end
  end
end

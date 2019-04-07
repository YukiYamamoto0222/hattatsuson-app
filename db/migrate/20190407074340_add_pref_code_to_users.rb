class AddPrefCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pref_code, :integer
  end
end

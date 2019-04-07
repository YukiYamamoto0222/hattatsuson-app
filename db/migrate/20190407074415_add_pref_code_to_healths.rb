class AddPrefCodeToHealths < ActiveRecord::Migration[5.2]
  def change
    add_column :healths, :pref_code, :integer
  end
end

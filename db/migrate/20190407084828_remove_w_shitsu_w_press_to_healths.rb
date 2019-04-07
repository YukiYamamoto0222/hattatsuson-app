class RemoveWShitsuWPressToHealths < ActiveRecord::Migration[5.2]
  def change
    remove_column :healths, :w_shitsu, :integer
    remove_column :healths, :w_press, :integer
  end
end

class AddDateToHealth < ActiveRecord::Migration[5.2]
  def change
    add_column :healths, :date, :date
  end
end

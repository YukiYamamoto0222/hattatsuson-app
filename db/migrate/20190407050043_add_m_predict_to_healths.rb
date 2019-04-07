class AddMPredictToHealths < ActiveRecord::Migration[5.2]
  def change
    add_column :healths, :m_predict, :integer
  end
end

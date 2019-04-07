class CreateHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :healths do |t|
      t.integer :user_id
      t.integer :rain_pct
      t.integer :w_temp
      t.integer :w_shitsu
      t.integer :w_press
      t.integer :y_steps
      t.integer :self_exp
      t.integer :result

      t.timestamps
    end
  end
end

require 'csv'

CSV.generate do |csv|
  column_names = %w(user_id pref_code year month day rain_pct w_temp w_shitsu w_press y_steps self_exp result)
  csv << column_names
  @health_data.each do |data|
    column_values = [
        data.user_id,
        data.pref_code,
        data.date.year,
        data.date.month,
        data.date.day,
        data.rain_pct,
        data.w_temp,
        data.w_shitsu,
        data.w_press,
        data.y_steps,
        data.self_exp,
        data.result
    ]
    csv << column_values
  end
end

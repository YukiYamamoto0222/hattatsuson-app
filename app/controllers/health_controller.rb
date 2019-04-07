class HealthController < ApplicationController
  protect_from_forgery :except => [:data_create]

  def index

  end

  def morning_new
    @health = Health.new
  end

  def morning_create
    @health = current_user.healths.build(self_exp: params[:self_exp], date: params[:date])
    if @health.save
      redirect_to "/health/morning_response"
    else
      render 'health/morning_new'
    end
  end

  def night_new
  end

  def night_create
    # Date.todayだと0:00移行に夜入力できない
    @health = Health.find_by(user_id: current_user.id, date: Date.today)
    @health.result = params[:result]
    if @health.save
      redirect_to "/health/night_response"
    else
      render 'health/night_new'
    end
  end

  def data_response
    @health_data = Health.all
  end

  def data_create
    # 要短縮
    @health = Health.new
    @health.date = Date.today
    @health.user_id = params[:user_id]
    @health.rain_pct = params[:rain_pct]
    @health.w_temp = params[:w_temp]
    @health.y_steps = 0
    @health.self_exp = 0
    @health.result = params[:result]
    @health.m_predict = params[:m_predict]
    @health.pref_code = 1
    @health.save
  end

end

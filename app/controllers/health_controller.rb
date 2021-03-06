class HealthController < ApplicationController
  protect_from_forgery :except => [:data_create]

  def index
    @health = Health.last
  end

  def morning_new
  end

  def morning_create
    @health = Health.last
    @health.self_exp = params[:self_exp]
    if @health.save
      redirect_to "/health/morning_response"
    else
      render 'health/morning_new'
    end
  end

  def night_new
  end

  def night_create
    @health = Health.last
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
    @health.result = 0
    @health.m_predict = params[:m_predict]
    @health.pref_code = 1
    @health.save
  end

end

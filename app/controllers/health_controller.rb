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
    @health = Health.find_by(user_id: params[:user_id], date: Date.today)
    @health.rain_pct = params[:rain_pct]
    @health.w_temp = params[:w_temp]
    @health.save
  end

end

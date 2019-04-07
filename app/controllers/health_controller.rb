class HealthController < ApplicationController
  def index
  end

  def morning_new
    @health = Health.new
  end

  def night_new

  end

  def create

  end

  def data_response
    @user = User.first
    @health_data = @user.healths
  end

end

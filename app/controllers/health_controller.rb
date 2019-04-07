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
    @health_data = current_user.healths
  end

end

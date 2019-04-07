class HealthController < ApplicationController
  def index

  end

  def morning_new
    @health = Health.new
  end

  def night_new

  end

  def data_response
    @health_data = Health.all
  end

  def data_create

  end

end

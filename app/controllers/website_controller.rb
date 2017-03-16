class WebsiteController < ApplicationController

  skip_before_action :verify_authenticity_token

  def seed_influx
    Website.seed_influx
    head :ok
  end

  def seed_postgres
    Website.seed_postgres
    head :ok
  end

end

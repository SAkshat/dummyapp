class WebsiteController < ApplicationController

  skip_before_action :verify_authenticity_token

  def seed_influx
    Website.seed_influx(website_params)
    head :ok
  end

  def seed_postgres
    Website.new(website_params).save
    head :ok
  end

  private

    def website_params
      params.require(:website).permit(:name, :region, :traffic, :timestamp)
    end

end

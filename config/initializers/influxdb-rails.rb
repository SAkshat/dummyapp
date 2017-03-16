influxdb = InfluxDB::Client.new
influxdb.create_database('influx')

InfluxDB::Rails.configure do |config|
  config.influxdb_database = "influx"
  config.influxdb_username = "root"
  config.influxdb_password = "password"
  config.influxdb_hosts    = ["localhost"]
  config.influxdb_port     = 8086
  # config.retry             = false

  # config.series_name_for_controller_runtimes = "rails.controller"
  # config.series_name_for_view_runtimes       = "rails.view"
  # config.series_name_for_db_runtimes         = "rails.db"
end


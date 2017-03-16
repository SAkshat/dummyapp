require 'csv'

class Website < ActiveRecord::Base

  FILE_PATH = 'db/seeds/data/traffic_data.csv'

  def self.seed_influx(data)
    influxdb = InfluxDB::Client.new('influx', repeat: 5)
    influxdb.write_point(
      'website',
      {
        values:    { traffic: data[:traffic] },
        tags:      { name: data[:name], region: data[:region] },
        timestamp: data[:timestamp].to_i
      }
    )
  end
end

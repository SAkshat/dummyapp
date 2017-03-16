require 'csv'

class Website < ActiveRecord::Base

  FILE_PATH = '/Users/akshatsinghal/Work/influxDB/dummyapp/db/seeds/data/traffic_data.csv'

  def self.seed_postgres
    CSV.foreach(FILE_PATH, col_sep: ',', headers: false) do |row|
      Website.new(name: row[0], region: row[1], traffic: row[2], timestamp: row[3]).save
    end
  end

  def self.seed_influx
    influxdb = InfluxDB::Client.new('influx', repeat: 5)
    CSV.foreach(FILE_PATH, col_sep: ',', headers: false) do |row|
      influxdb.write_point(
        'website',
        {
          values:    { traffic: row[2] },
          tags:      { name: row[0], region: row[1] },
          timestamp: Time.parse(row[3]).to_i
        }
      )
    end
  end
end

require 'httparty'
require 'csv'

FILE_PATH = '../../db/seeds/data/traffic_data.csv'

CSV.foreach(FILE_PATH, col_sep: ',', headers: false) do |row|
  HTTParty.post('http://localhost:3000/postgres', body: { website: { name: row[0], region: row[1], traffic: row[2], timestamp: row[3] } })
end

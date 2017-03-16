require 'faker'
require 'csv'
require 'active_support/core_ext/integer/time.rb'

FILE_PATH = '../../db/seeds/data/traffic_data.csv'

puts 'How many records should be generated?'
num_records = gets.strip.to_i

CSV.open(FILE_PATH, "wb") do |csv|
  (1..num_records).each do
    name = Faker::Name.name
    region = Faker::Address.city
    traffic = rand(10000)
    timestamp = Faker::Date.between(Date.today, 1.years.from_now)

    csv << [name, region, traffic, timestamp]
  end
end

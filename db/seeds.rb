# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'
Park.transaction do
  CSV.foreach('data/nps_parks.csv', headers: true, header_converters: -> (h) { h.downcase.to_sym }) do |park|
      p park
      Park.create(id: park[:id], name: park[:name], state: park[:state], latitude: park[:latitude],
                                                    longitude: park[:longitude], url: park[:url])
  end
end

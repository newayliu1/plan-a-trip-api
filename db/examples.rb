# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

User.transaction do
  User.create!(
    email: 'wei',
    password: 'a',
    password_confirmation: 'a'
  )
end
Trip.transaction do
  Trip.create!(name: 'Boston',
               user: User.first)
end
Attraction.transaction do
  Attraction.create!([{ name: 'Quincy Market',
                        address: '123 Quincy St. Boston, MA',
                        time_spend: 120,
                        trip: Trip.first },
                      { name: 'Harvard University',
                        address: '1 Harvard SQ. Boston, MA',
                        time_spend: 180,
                        notes: 'Most Important Attraction',
                        trip: Trip.first }])
end

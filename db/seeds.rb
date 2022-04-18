# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

taiwan = Airport.create(code: 'TPE', name: 'Taoyuan International Airport')
vancouver = Airport.create(code: 'YVR', name: 'Vancouver International Airport')
tokyo = Airport.create(code: 'HND', name: 'Tokyo International Airport')
# hokkaido = Airport.create(code: 'CTS', name: 'New Chitose Airport')

dt1 = DateTime.parse('8th Aug 2022 12:30:00-07:00')
dt2 = DateTime.parse('1st July 2022 03:40:00-07:00')
dt3 = DateTime.parse('20 Oct 2022 10:10:00+09:00')

flight1 = Flight.create(departure_airport: vancouver, arrival_airport: tokyo, time: dt1, duration: 610)
flight2 = Flight.create(departure_airport: vancouver, arrival_airport: taiwan, time: dt2, duration: 745)
flight3 = Flight.create(departure_airport: tokyo, arrival_airport: taiwan, time: dt3, duration: 205)
# flight4 = Flight.create(departure_airport: taiwan, arrival_airport:tokyo)
# flight5 = Flight.create(departure_airport: tokyo, arrival_airport: vancouver)
# flight6 = Flight.create(departure_airport: taiwan, arrival_airport: vancouver)

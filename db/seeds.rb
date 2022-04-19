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
dt2 = DateTime.parse('8th Aug 2022 09:10:00-07:00')
dt3 = DateTime.parse('8th Aug 2022 18:40:00-07:00')
dt4 = DateTime.parse('1st July 2022 03:40:00-07:00')
dt5 = DateTime.parse('1st July 2022 05:50:00-07:00')
dt6 = DateTime.parse('1st July 2022 07:20:00-07:00')
dt7 = DateTime.parse('20 Oct 2022 10:10:00+09:00')
dt8 = DateTime.parse('20 Oct 2022 16:30:00+09:00')
dt9 = DateTime.parse('20 Oct 2022 23:10:00+09:00')


flight1 = Flight.create(departure_airport: vancouver, arrival_airport: tokyo, time: dt1, duration: 610)
flight4 = Flight.create(departure_airport: vancouver, arrival_airport: tokyo, time: dt4, duration: 610)
flight7 = Flight.create(departure_airport: vancouver, arrival_airport: tokyo, time: dt7, duration: 610)


flight2 = Flight.create(departure_airport: vancouver, arrival_airport: taiwan, time: dt2, duration: 745)
flight5 = Flight.create(departure_airport: vancouver, arrival_airport: taiwan, time: dt5, duration: 745)
flight8 = Flight.create(departure_airport: vancouver, arrival_airport: taiwan, time: dt8, duration: 745)


flight3 = Flight.create(departure_airport: tokyo, arrival_airport: taiwan, time: dt3, duration: 205)
flight6 = Flight.create(departure_airport: tokyo, arrival_airport: taiwan, time: dt6, duration: 205)
flight9 = Flight.create(departure_airport: tokyo, arrival_airport: taiwan, time: dt9, duration: 205)

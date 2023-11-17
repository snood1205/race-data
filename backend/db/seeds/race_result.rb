# frozen_string_literal: true

[{
  race: '2023 Indianapolis 500',
  driver: 'Josef Newgarden',
  position: 1,
  interval_ms: 0
},
 {
   race: '2023 Daytona 500',
   driver: 'Ricky Stenhouse Jr.',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 Course de Monterey',
   driver: 'Sébastien Bourdais',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 Course de Monterey',
   driver: 'Renger van der Zande',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 Italian Grand Prix',
   driver: 'Max Verstappen',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 24 Hours of Le Mans',
   driver: 'James Calado',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 24 Hours of Le Mans',
   driver: 'Antonio Giovinazzi',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 24 Hours of Le Mans',
   driver: 'Alessandro Pier Guidi',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 Nurburgring 24',
   driver: 'Earl Bamber',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 Nurburgring 24',
   driver: 'Nicky Catsburg',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 Nurburgring 24',
   driver: 'Felipe Fernández Laser',
   position: 1,
   interval_ms: 0
 },
 {
   race: '2023 Nurburgring 24',
   driver: 'David Pittard',
   position: 1,
   interval_ms: 0
 }].each do |race_result|
  race_result[:race] = Race.find_by name: race_result[:race]
  race_result[:driver] = Driver.find_by name: race_result[:driver]
  RaceResult.create! race_result
end

# frozen_string_literal: true

[{ name: '2023 Indianapolis 500',
   date: '2023-05-28 12:45:00-04:00',
   track: 'Indianapolis Motor Speedway' },
 { name: '2023 Daytona 500',
   date: '2023-02-26 14:30:00-05:00',
   track: 'Daytona International Speedway' },
 { name: '2023 Course de Monterey',
   date: '2023-05-14 12:00:00-07:00',
   track: 'Raceway Laguna Seca' },
 { name: '2023 Italian Grand Prix',
   date: '2023-09-03 15:00:00+02:00',
   track: 'Autodromo Nationale di Monza' },
 { name: '2023 24 Hours of Le Mans',
   date: '2023-06-17 16:00:00+02:00',
   track: 'Circuit de la Sarthe' },
 { name: '2023 Nurburgring 24',
   date: '2023-05-20 16:00:00+02:00',
   track: 'Nurburgring Nordschleife' }].each do |race|
  race[:track] = Track.find_by name: race[:track]
  Race.create! race
end

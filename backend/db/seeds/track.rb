# frozen_string_literal: true

[{ name: 'Indianapolis Motor Speedway',
   location: 'Speedway, IN, USA',
   length_km: 4.023,
   lap_record_ms: 38_119, # Eddie Cheever, 1996
   map_url: 'https://upload.wikimedia.org/wikipedia/commons/5/55/Indianapolis_Motor_Speedway_-_Speedway.svg' },
 { name: 'Daytona International Speedway',
   location: 'Daytona Beach, FL, USA',
   length_km: 4.023,
   lap_record_ms: 40_364, # Colin Braun, 2013
   map_url: 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Daytona_International_Speedway.svg' },
 { name: 'Raceway Laguna Seca',
   location: 'Monterey, CA, USA',
   length_km: 3.602,
   lap_record_ms: 68_417, # Alex Palou, 2023
   map_url: 'https://upload.wikimedia.org/wikipedia/commons/5/57/Laguna_Seca.svg' },
 { name: 'Autodromo Nationale di Monza',
   location: 'Monza, Italy',
   length_km: 5.793,
   lap_record_ms: 81_046, # Rubens Barrichello, 2004
   map_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f8/Monza_track_map.svg' },
 { name: 'Circuit de la Sarthe',
   location: 'Le Mans, Pays de la Loire, France',
   length_km: 13.626,
   lap_record_ms: 197_297, # Mike Conway, 2019
   map_url: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Circuit_de_la_Sarthe_v2.png' },
 { name: 'Nurburgring Nordschleife',
   location: 'Nurburg, Germany',
   length_km: 20.832,
   lap_record_ms: 385_910, # Stefan Bellof, 1983
   map_url: 'https://upload.wikimedia.org/wikipedia/commons/6/61/Circuit_N%C3%BCrburgring-2013-Nordschleife.svg' }].each do |track|
  Track.create!(track)
end

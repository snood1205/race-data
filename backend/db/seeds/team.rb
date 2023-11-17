# frozen_string_literal: true

[{ name: 'Team Penske',
   headquarters: 'Mooresville, NC',
   founded: '1966-01-01',
   championships: 15 },
 { name: 'JTG Daugherty Racing',
   headquarters: 'Harrisburg, NC',
   founded: '1995-01-01',
   championships: 0 },
 { name: 'Chip Ganassi Racing',
   headquarters: 'Indianapolis, IN',
   founded: '1990-01-01',
   championships: 0 },
 { name: 'Red Bull Racing',
   headquarters: 'Milton Keynes, UK',
   founded: '1966-01-01',
   championships: 6 },
 { name: 'AF Corse',
   headquarters: 'Piacenza, Italy',
   founded: '1995-01-01',
   # GTE Pro WEC
   championships: 4 },
 { name: 'Frikadelli Racing Team',
   headquarters: 'Barweiler, Germany',
   founded: '2005-01-01',
   # Null as is not series
   championships: 0 }].each do |team|
  Team.create!(team)
end

require './models/artist'

ENV['RACK_ENV'] ||= 'development'

Mongoid.load!("config/mongoid.yml")

Artist.create(
  {
    name: 'Luciano Pavariti',
    photo_url: 'http://artcreationforever.com/images/luciano-pavarotti/luciano-pavarotti-03.jpg',
    nationality: 'Italiano',
    instrument: 'Voice',
    home_address: {
      street: '1 Stade Roma',
      city: 'Roma',
      country: 'Italia'
    }
  }
)

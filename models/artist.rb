require 'mongoid'
require  "#{File.dirname(__FILE__)}/home_address"

class Artist
    include Mongoid::Document
    include Mongoid::Timestamps

    field :name, type: String
    field :photo_url, type: String
    field :nationality, type: String
    field :instrument, type: String
    embeds_one :home_address
end

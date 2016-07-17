class HomeAddress
  include Mongoid::Document
  embedded_in :artist

  field :street
  field :city
  field :state
  field :country
end
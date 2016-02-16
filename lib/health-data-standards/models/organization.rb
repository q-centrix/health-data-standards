module HealthDataStandards
  class Organization
    include Mongoid::Document
    include Mongoid::Attributes::Dynamic

    store_in collection: 'organizations'

    field :name, type: String

    embeds_many :addresses, as: :locatable
    embeds_many :telecoms, as: :contactable
  end
end

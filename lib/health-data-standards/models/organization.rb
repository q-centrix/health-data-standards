module HDS
  class Organization
    include Mongoid::Document
    include Mongoid::Attributes::Dynamic
    
    field :name, type: String
    
    embeds_many :addresses, as: :locatable, class_name: 'HDS::Address'
    embeds_many :telecoms, as: :contactable
  end
end
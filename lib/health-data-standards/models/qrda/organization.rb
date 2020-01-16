module Qrda

  class Organization
    include Mongoid::Document
    field :name, type: String
    embeds_many :ids
    embeds_many :addresses, class_name: 'HDS::Address'
    embeds_many :telecoms
  end
  
end

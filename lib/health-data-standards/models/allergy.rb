# frozen_string_literal: true

class Allergy < Entry
  field :type, type: Hash
  field :reaction, type: Hash
  field :severity, type: Hash
end

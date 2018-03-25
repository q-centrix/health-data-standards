# frozen_string_literal: true

class PhysicalQuantityResultValue < ResultValue
  field :scalar
  field :units, type: String
end

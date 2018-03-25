# frozen_string_literal: true

class ResultValue
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  embedded_in :entry
end

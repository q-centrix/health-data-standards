module HealthDataStandards
  module CQM
    class Population
      attr_accessor :type, :value, :id
    end

    class Stratification
      attr_accessor :id, :populations

      def initialize
        @populations = []
      end
    end

    class AggregateCount
      attr_accessor :measure_id, :stratifications, :top_level_populations

      def initialize
        @stratifications = []
        @top_level_populations = []
      end

      def is_cv?
        top_level_populations.any? {|pop| pop.type = 'MSRPOPL'}
      end

      def performance_rate
        numerator.value.to_f / (denominator.value - denominator_exclusions.value - denominator_exceptions.value)
      end

      def numerator
        top_level_populations.find {|pop| pop.type = 'NUMER'}
      end

      def denominator
        top_level_populations.find {|pop| pop.type = 'DENOM'}
      end

      def denominator_exceptions
        top_level_populations.find {|pop| pop.type = 'DENEXCEP'}
      end

      def denominator_exclusions
        top_level_populations.find {|pop| pop.type = 'DENEX'}
      end

      def population_count(population_type)
        top_level_populations.find {|pop| pop.type = population_type}.value
      end
    end
  end
end
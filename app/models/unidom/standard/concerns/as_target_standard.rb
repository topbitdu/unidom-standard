module Unidom::Standard::Concerns::AsTargetStandard

  extend ActiveSupport::Concern

  included do |includer|

    has_many :source_associatings, class_name: 'Unidom::Standard::StandardAssociating', foreign_key: :target_id
    has_many :source_standards,    through:    :source_associatings,                    source:      :source

  end

  module ClassMethods
  end

end

module Unidom::Standard::Concerns::AsSourceStandard

  extend ActiveSupport::Concern

  included do |includer|

    has_many :target_associatings, class_name: 'Unidom::Standard::StandardAssociating', foreign_key: :source_id
    has_many :target_standards,    through:    :target_associatings,                    source:      :target

  end

  module ClassMethods
  end

end

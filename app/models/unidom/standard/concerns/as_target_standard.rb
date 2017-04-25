##
# As Target Standard 是目标标准的领域逻辑关注点。

module Unidom::Standard::Concerns::AsTargetStandard

  extend  ActiveSupport::Concern
  include Unidom::Common::Concerns::ArgumentValidation

  included do |includer|

    has_many :source_associatings, class_name: 'Unidom::Standard::StandardAssociating', foreign_key: :target_id
    has_many :source_standards,    through:    :source_associatings,                    source:      :source

    def is_associated!(source, due_to: 'REVS', at: Time.now)

      assert_present! :source, source

      source_associatings.source_is(source).association_coded_as(due_to).valid_at(now: at).alive.first_or_create! opened_at: at

    end

    def is_associated?(source, due_to: 'REVS', at: Time.now)
      source_associatings.source_is(source).association_coded_as(due_to).valid_at(now: at).alive.exists?
    end

  end

  module ClassMethods
  end

end

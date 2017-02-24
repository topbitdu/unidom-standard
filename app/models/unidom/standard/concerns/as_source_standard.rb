##
# As Source Standard 是源标准的领域逻辑关注点。

module Unidom::Standard::Concerns::AsSourceStandard

  extend ActiveSupport::Concern

  included do |includer|

    has_many :target_associatings, class_name: 'Unidom::Standard::StandardAssociating', foreign_key: :source_id
    has_many :target_standards,    through:    :target_associatings,                    source:      :target

    def associate!(target, due_to: 'REVS', at: Time.now)
      target_associatings.target_is(target).association_coded_as(due_to).valid_at(now: at).alive.first_or_create! opened_at: at
    end

    def associate?(target, due_to: 'REVS', at: Time.now)
      target_associatings.target_is(target).association_coded_as(due_to).valid_at(now: at).alive.exists?
    end

  end

  module ClassMethods
  end

end

##
# Standard Association 是标准之间的关联关系。
# association_code: REVS 修订，RFRC 引用。

class Unidom::Standard::StandardAssociating < Unidom::Standard::ApplicationRecord

  self.table_name = 'unidom_standard_associatings'

  include Unidom::Common::Concerns::ModelExtension

  scope :source_is, ->(source) { where source_id: (source.respond_to?(:id) ? source.id : source) }
  scope :target_is, ->(target) { where target_id: (target.respond_to?(:id) ? target.id : target) }

  belongs_to :source, class_name: 'Unidom::Standard::Standard', foreign_key: :source_id
  belongs_to :target, class_name: 'Unidom::Standard::Standard', foreign_key: :target_id

  def self.associate!(source, with: target, due_to: 'REVS', at: Time.now)
    create! source_id: to_id(source), target_id: to_id(with), association_code: due_to, opened_at: at
  end

end

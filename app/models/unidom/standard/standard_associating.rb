# Standard Association 是标准之间的关联关系。
# association_code: REVS 修订，RFRC 引用。
class Unidom::Standard::StandardAssociating < ActiveRecord::Base

  self.table_name = 'unidom_standard_associatings'

  scope :source_is, ->(source) { where source_id: (source.respond_to?(:id) ? source.id : source) }
  scope :target_is, ->(target) { where target_id: (target.respond_to?(:id) ? target.id : target) }

  belongs_to :source, class_name: 'Unidom::Standard::Standard', foreign_key: :source_id
  belongs_to :target, class_name: 'Unidom::Standard::Standard', foreign_key: :target_id

  include Unidom::Common::Concerns::ModelExtension

end

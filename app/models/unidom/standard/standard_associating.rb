##
# Standard Association 是标准之间的关联关系。
# association_code: REVS 修订，RFRC 引用。

class Unidom::Standard::StandardAssociating < Unidom::Standard::ApplicationRecord

  self.table_name = 'unidom_standard_associatings'

  include Unidom::Common::Concerns::ModelExtension

  belongs_to :source, class_name: 'Unidom::Standard::Standard', foreign_key: :source_id
  belongs_to :target, class_name: 'Unidom::Standard::Standard', foreign_key: :target_id

  scope :source_is, ->(source) { where source: source }
  scope :target_is, ->(target) { where target: target }

  def self.associate!(source, with: target, due_to: 'REVS', at: Time.now)
    create! source_id: to_id(source), target_id: to_id(with), association_code: due_to, opened_at: at
  end

end unless Unidom::Common::Neglection.namespace_neglected? 'Unidom::Standard::StandardAssociating'

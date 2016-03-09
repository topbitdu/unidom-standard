# Standard 是标准。
# 起草单位：   归口单位：
# 标引依据：国家标准公告2015年第38号
# 补充修订：
# 备注：
# 范围：
# Revised by: ISO/NP 9004
# Revises: ISO 9004:2000

class Unidom::Standard::Standard < ActiveRecord::Base

  self.table_name = 'unidom_standards'

  validates :name,   presence: true, length: { in: 2..self.columns_hash['name'].limit   }
  validates :number, presence: true, length: { in: 2..self.columns_hash['number'].limit }, uniqueness: true

  scope :number_is, ->(number) { where number: number }

  has_many :target_associatings, class_name: 'Unidom::Standard::StandardAssociating', foreign_key: :source_id # as:     :source
  has_many :target_standards,    through:    :target_associatings,                    source: :target
  has_many :source_associatings, class_name: 'Unidom::Standard::StandardAssociating', foreign_key: :target_id # as:     :target
  has_many :source_standards,    through:    :source_associatings,                    source: :source

  include Unidom::Common::Concerns::ModelExtension

end

# Standard 是标准。
# 起草单位：   归口单位：
# 标引依据：国家标准公告2015年第38号
# 补充修订：
# 备注：
# 范围：
# Revised by: ISO/NP 9004
# Revises: ISO 9004:2000

class Unidom::Standard::Standard < Unidom::Standard::ApplicationRecord

  self.table_name = 'unidom_standards'

  include Unidom::Common::Concerns::ModelExtension
  include Unidom::Standard::Concerns::AsSourceStandard
  include Unidom::Standard::Concerns::AsTargetStandard

  validates :name,   presence: true, length: { in: 2..self.columns_hash['name'].limit   }
  validates :number, presence: true, length: { in: 2..self.columns_hash['number'].limit }, uniqueness: true

  scope :number_is, ->(number) { where number: number }

end

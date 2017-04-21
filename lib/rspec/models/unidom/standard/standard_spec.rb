require 'rspec/models/unidom/standard/concerns/as_source_standard_shared_examples'
require 'rspec/models/unidom/standard/concerns/as_target_standard_shared_examples'

describe Unidom::Standard::Standard, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      name:         'Some Name',
      number:       'GB/T 3259-2008',
      ics_code:     '11-23-68',
      published_on: Date.current-1.year,
      applied_on:   Date.current,
      obsoleted_on: Date.current+20.years
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension',     model_attributes.merge(number: 'GB/T 9999-000')
    it_behaves_like 'Unidom::Standard::Concerns::AsSourceStandard', model_attributes.merge(number: 'GB/T 9999-001')
    it_behaves_like 'Unidom::Standard::Concerns::AsTargetStandard', model_attributes.merge(number: 'GB/T 9999-002')

    it_behaves_like 'validates text', model_attributes.merge(number: 'GB/T 9999-003'), :name,
      length: 2..described_class.columns_hash['name'].limit

    number_max_length = described_class.columns_hash['number'].limit
    it_behaves_like 'validates', model_attributes.merge(number: 'GB/T 9999-004'), :number,
      {               } => 0,
      { number: nil   } => 2,
      { number: ''    } => 2,
      { number: 'A'   } => 1,
      { number: 'AA'  } => 0,
      { number: 'AAA' } => 0,
      { number: 'A'*(number_max_length-1) } => 0,
      { number: 'A'*number_max_length     } => 0,
      { number: 'A'*(number_max_length+1) } => 1

    it_behaves_like 'scope', :number_is, [
      { attributes_collection: [ model_attributes.merge(number: 'GB/T 9999-005') ], count_diff: 1, args: [ 'GB/T 9999-005' ] },
      { attributes_collection: [ model_attributes.merge(number: 'GB/T 9999-006') ], count_diff: 0, args: [ 'GB/T 9999-005' ] },
      { attributes_collection: [ model_attributes.merge(number: 'GB/T 9999-007') ], count_diff: 0, args: [ 'GB/T 9999-008' ] },
      { attributes_collection: [ model_attributes.merge(number: 'GB/T 9999-008') ], count_diff: 1, args: [ 'GB/T 9999-008' ] }
    ]

  end

end

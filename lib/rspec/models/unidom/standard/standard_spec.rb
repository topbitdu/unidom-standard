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

    number_max_length = described_class.columns_hash['number'].limit

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

    it_behaves_like 'validates text', model_attributes, :name,
      length: 2..described_class.columns_hash['name'].limit

    it_behaves_like 'validates', model_attributes, :number,
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
      { attributes_collection: [ model_attributes                                                ], count_diff: 1, args: [ model_attributes[:number]       ] },
      { attributes_collection: [ model_attributes                                                ], count_diff: 0, args: [ "#{model_attributes[:number]}0" ] },
      { attributes_collection: [ model_attributes.merge(number: "#{model_attributes[:number]}0") ], count_diff: 0, args: [ model_attributes[:number]       ] },
      { attributes_collection: [ model_attributes.merge(number: "#{model_attributes[:number]}0") ], count_diff: 1, args: [ "#{model_attributes[:number]}0" ] } ]

  end

end

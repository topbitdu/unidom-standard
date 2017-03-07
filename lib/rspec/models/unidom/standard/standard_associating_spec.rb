describe Unidom::Standard::StandardAssociating, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      source_id:        SecureRandom.uuid,
      target_id:        SecureRandom.uuid,
      association_code: 'REVS'
    }

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

    source_standard_attributes = {
      name:         'Source Name',
      number:       'GB/T 3259-2008',
      ics_code:     '11-23-68',
      published_on: Date.current-20.years,
      applied_on:   Date.current,
      obsoleted_on: Date.current+1.year
    }

    target_standard_attributes = {
      name:         'Target Name',
      number:       'GB/T 3259-2018',
      ics_code:     '11-23-68',
      published_on: Date.current+1.year,
      applied_on:   Date.current,
      obsoleted_on: Date.current+20.years
    }

    it_behaves_like 'belongs_to', model_attributes, :source, Unidom::Standard::Standard, source_standard_attributes
    it_behaves_like 'belongs_to', model_attributes, :target, Unidom::Standard::Standard, target_standard_attributes

    it_behaves_like 'monomorphic scope', model_attributes, :source_is, :source
    it_behaves_like 'monomorphic scope', model_attributes, :target_is, :target

  end

end

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

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

  end

end

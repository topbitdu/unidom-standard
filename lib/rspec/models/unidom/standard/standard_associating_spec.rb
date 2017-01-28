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

  end

end

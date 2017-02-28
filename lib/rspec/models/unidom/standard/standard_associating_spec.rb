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

    it_behaves_like 'scope', :source_is, [
      { attributes_collection: [ model_attributes                                     ], count_diff: 1, args: [ model_attributes[:source_id]                                     ] },
      { attributes_collection: [ model_attributes                                     ], count_diff: 1, args: [ Unidom::Standard::Standard.new(id: model_attributes[:source_id]) ] },
      { attributes_collection: [ model_attributes.merge(source_id: SecureRandom.uuid) ], count_diff: 0, args: [ model_attributes[:source_id]                                     ] },
      { attributes_collection: [ model_attributes.merge(source_id: SecureRandom.uuid) ], count_diff: 0, args: [ Unidom::Standard::Standard.new(id: model_attributes[:source_id]) ] } ]

    it_behaves_like 'scope', :target_is, [
      { attributes_collection: [ model_attributes                                     ], count_diff: 1, args: [ model_attributes[:target_id]                                     ] },
      { attributes_collection: [ model_attributes                                     ], count_diff: 1, args: [ Unidom::Standard::Standard.new(id: model_attributes[:target_id]) ] },
      { attributes_collection: [ model_attributes.merge(target_id: SecureRandom.uuid) ], count_diff: 0, args: [ model_attributes[:target_id]                                     ] },
      { attributes_collection: [ model_attributes.merge(target_id: SecureRandom.uuid) ], count_diff: 0, args: [ Unidom::Standard::Standard.new(id: model_attributes[:target_id]) ] } ]

  end

end

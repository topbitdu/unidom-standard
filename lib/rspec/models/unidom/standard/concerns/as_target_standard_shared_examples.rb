shared_examples 'Unidom::Standard::Concerns::AsTargetStandard' do |model_attributes|

  context do

    source_associating_1_attributes = {
      source_id: SecureRandom.uuid
    }

    source_associating_2_attributes = {
      source_id: SecureRandom.uuid
    }

    it_behaves_like 'has_many', model_attributes, :source_associatings, Unidom::Standard::StandardAssociating, [ source_associating_1_attributes, source_associating_2_attributes ]

  end

end

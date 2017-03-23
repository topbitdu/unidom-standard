shared_examples 'Unidom::Standard::Concerns::AsSourceStandard' do |model_attributes|

  context do

    target_associating_1_attributes = {
      target_id: SecureRandom.uuid
    }

    target_associating_2_attributes = {
      target_id: SecureRandom.uuid
    }

    it_behaves_like 'has_many', model_attributes, :target_associatings, Unidom::Standard::StandardAssociating, [ target_associating_1_attributes, target_associating_2_attributes ]

  end

end

shared_examples 'Unidom::Standard::Concerns::AsSourceStandard' do |model_attributes|

  context do

    target_associating_1_attributes = {
      target_id: SecureRandom.uuid
    }

    target_associating_2_attributes = {
      target_id: SecureRandom.uuid
    }

    it_behaves_like 'has_many', model_attributes, :target_associatings, Unidom::Standard::StandardAssociating, [ target_associating_1_attributes, target_associating_2_attributes ]

    model = described_class.create! model_attributes

    target_attributes = {
      name:     'Target Standard Name',
      #number:   'GB/T 9999-1845.A',
      ics_code: '01-02-03'
    }
    target = Unidom::Standard::Standard.number_is('GB/T 9999-1845.A').first_or_create! target_attributes

    it_behaves_like 'assert_present!', model, :associate!, [ target, due_to: 'REVS', at: Time.now ], [ { 0 => :target }, :due_to, :at ]
    it_behaves_like 'assert_present!', model, :associate?, [ target, due_to: 'REVS', at: Time.now ], [ { 0 => :target }, :due_to, :at ]

  end

end

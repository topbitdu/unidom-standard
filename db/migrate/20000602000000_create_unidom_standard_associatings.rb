class CreateUnidomStandardAssociatings < ActiveRecord::Migration

  def change

    create_table :unidom_standard_associatings, id: :uuid do |t|

      t.references :source, type: :uuid, null: false
      t.references :target, type: :uuid, null: false

      t.column :association_code, 'char(4)', null: false, default: 'REVS'

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: Unidom::Common::OPENED_AT
      t.datetime :closed_at,        null: false, default: Unidom::Common::CLOSED_AT
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_standard_associatings, [ :source_id, :target_id ], unique: true
    add_index :unidom_standard_associatings, :target_id

  end

end

class CreateUnidomStandards < ActiveRecord::Migration

  def change

    create_table :unidom_standards, id: :uuid do |t|

      t.string :name,     null: false, default: '',  limit: 200
      t.string :number,   null: false, default: '',  limit: 200
      t.string :ics_code, null: true,  default: nil, limit: 64

      t.text :scope_definition
      t.text :corrigenda
      t.text :instruction
      t.text :description

      t.date :published_on, null: false, default: '3000-01-01'
      t.date :applied_on,   null: false, default: '3000-01-01'
      t.date :obsoleted_on, null: false, default: '3000-01-01'

      t.column   :state, 'char(1)', null: false, default: 'C'
      t.datetime :opened_at,        null: false, default: Unidom::Common::OPENED_AT
      t.datetime :closed_at,        null: false, default: Unidom::Common::CLOSED_AT
      t.boolean  :defunct,          null: false, default: false
      t.jsonb    :notation,         null: false, default: {}

      t.timestamps null: false

    end

    add_index :unidom_standards, :number, unique: true

  end

end

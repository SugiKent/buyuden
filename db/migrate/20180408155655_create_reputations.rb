class CreateReputations < ActiveRecord::Migration[5.1]
  def change
    create_table :reputations do |t|
      t.references :story, foreign_key: true
      t.integer :rep_type

      t.timestamps
    end
  end
end

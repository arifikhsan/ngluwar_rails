class CreatePopulations < ActiveRecord::Migration[6.1]
  def change
    create_table :populations do |t|
      t.references :village, null: false, foreign_key: true
      t.references :year, null: false, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end

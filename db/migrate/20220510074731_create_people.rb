class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.references :parent, foreign_key: { to_table: :people }

      t.timestamps null: false
    end
  end
end

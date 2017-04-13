class CreateDoses < ActiveRecord::Migration[5.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.reference :cocktail
      t.reference :dose

      t.timestamps
    end
  end
end

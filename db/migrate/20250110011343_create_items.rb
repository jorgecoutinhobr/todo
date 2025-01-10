class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :description
      t.string :urgency
      t.date :date
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end

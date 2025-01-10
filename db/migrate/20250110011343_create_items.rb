class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.text :description
      t.integer :priority, default: 0
      t.boolean :completed, default: false
      t.date :date
      t.references :list, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

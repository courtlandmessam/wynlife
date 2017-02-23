class CreateWynthoughts < ActiveRecord::Migration[5.0]
  def change
    create_table :wynthoughts do |t|
      t.string :title
      t.text :body
      t.references :suggestion, foreign_key: true

      t.timestamps
    end
  end
end

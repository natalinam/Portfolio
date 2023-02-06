class CreateTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.references :port_content, null: false, foreign_key: true

      t.timestamps
    end
  end
end

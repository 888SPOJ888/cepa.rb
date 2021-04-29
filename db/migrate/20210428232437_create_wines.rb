class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end

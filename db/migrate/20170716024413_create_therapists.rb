class CreateTherapists < ActiveRecord::Migration
  def change
    create_table :therapists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

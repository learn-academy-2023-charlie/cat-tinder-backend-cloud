class CreateVillains < ActiveRecord::Migration[7.0]
  def change
    create_table :villains do |t|
      t.string :name
      t.integer :age
      t.text :hobbies
      t.text :power
      t.text :about
      t.text :evil_scheme
      t.text :image

      t.timestamps
    end
  end
end

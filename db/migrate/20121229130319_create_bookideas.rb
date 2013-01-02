class CreateBookideas < ActiveRecord::Migration
  def change
    create_table :bookideas do |t|
      t.string :idea
      t.integer :process

      t.references :user
      t.references :book
      t.timestamps
    end
  end
end

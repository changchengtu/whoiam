class CreateReadedbooks < ActiveRecord::Migration
  def change
    create_table :readedbooks do |t|

      t.references :user
      t.references :book
      t.timestamps
    end
  end
end

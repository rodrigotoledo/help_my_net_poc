class CreateFixes < ActiveRecord::Migration[7.0]
  def change
    create_table :fixes do |t|
      t.string :professional
      t.string :user
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end

class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :symbol
      t.string :symbol_native
      t.string :name
      t.integer :decimal_digits
      t.string :code
      t.integer :rounding
      t.string :name_plural
      t.float :rate

      t.timestamps
    end
  end
end

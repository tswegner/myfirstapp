class ChangePriceFromStringToInteger < ActiveRecord::Migration
  def change
      execute <<-SQL
      ALTER TABLE produtcs
      ALTER COLUMN price TYPE integer USING price::integer
    SQL
    #change_column :products, :price, :integer
  end
end

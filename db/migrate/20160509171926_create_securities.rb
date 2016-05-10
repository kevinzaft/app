class CreateSecurities < ActiveRecord::Migration
  def change
    create_table :securities do |t|
      t.string :name
      t.string :price
      t.string :code
      t.string :brand
      t.string :brandmodel
      t.string :securitytype
      t.text :systemrequirements
      t.text :features
      t.text :warranty
      t.text :other

      t.timestamps null: false
    end
  end
end

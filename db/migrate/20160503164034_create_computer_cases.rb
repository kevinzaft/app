class CreateComputerCases < ActiveRecord::Migration
  def change
    create_table :computer_cases do |t|
      t.string   :name
      t.string   :code
      t.string   :casetype
      t.string   :brand
      t.string   :casemodel
      t.string   :motherboard
      t.string   :material
      t.text     :drivebay
      t.string   :weight
      t.string   :expansion
      t.string   :dimensions
      t.string   :thickness
      t.string   :iopanel
      t.text     :cooling
      t.text     :power
      t.string   :cpucompatibility
      t.string   :vgacompatibility
      t.text     :other
      t.string   :price

      t.timestamps null: false
    end
  end
end

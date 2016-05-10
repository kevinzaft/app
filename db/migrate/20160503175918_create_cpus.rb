class CreateCpus < ActiveRecord::Migration
  def change
    create_table :cpus do |t|
      t.string   :name
      t.string   :code
      t.string   :cputype
      t.string   :sockettype
      t.string   :brand
      t.string   :mpn
      t.string   :cpumodel
      t.string   :series
      t.string   :cores
      t.string   :threads
      t.string   :clock
      t.string   :cache
      t.string   :power
      t.string   :manufacturing
      t.string   :memorytypes
      t.string   :memorychannels
      t.string   :graphics
      t.string   :price
      t.text     :other
      t.timestamps null: false
    end
  end
end

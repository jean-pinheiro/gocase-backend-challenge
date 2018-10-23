class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batches do |t|
      t.string :reference
      t.string :purchase_channel
      t.text :orders

      t.timestamps
    end
  end
end

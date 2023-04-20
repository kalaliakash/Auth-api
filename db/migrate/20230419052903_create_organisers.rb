class CreateOrganisers < ActiveRecord::Migration[7.0]
  def change
    create_table :organisers do |t|
      t.string :total_contests_created
      t.integer :total_amount_received

      t.timestamps
    end
  end
end

class CreateApps < ActiveRecord::Migration[7.0]
  def change
    create_table :apps do |t|
      t.string :contest
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

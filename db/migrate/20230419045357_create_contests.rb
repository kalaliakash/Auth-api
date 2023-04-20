class CreateContests < ActiveRecord::Migration[7.0]
  def change
    create_table :contests do |t|
      t.string :name_of_contest
      t.string :type_of_match

      t.timestamps
    end
  end
end

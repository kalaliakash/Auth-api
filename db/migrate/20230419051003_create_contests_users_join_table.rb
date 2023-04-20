class CreateContestsUsersJoinTable < ActiveRecord::Migration[7.0]
  def change
		create_join_table :contests, :users
  end
end

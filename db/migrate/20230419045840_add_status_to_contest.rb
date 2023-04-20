class AddStatusToContest < ActiveRecord::Migration[7.0]
  def change
		add_column :contests, :status_of_match, :string
  end
end

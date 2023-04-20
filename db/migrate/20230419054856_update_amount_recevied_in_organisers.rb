class UpdateAmountReceviedInOrganisers < ActiveRecord::Migration[7.0]
  def change
 remove_column :organisers, :total_amount_recived 
 #Ex:- rename_column("admin_users", "pasword","hashed_pasword") :organisers, :total_amount_recived, :total_amount_received
  end
end

class RenameEmailAddressToEmail < ActiveRecord::Migration

  def change
      change_table :members do |t|
        t.rename :email_address, :email  
      end
  end



end

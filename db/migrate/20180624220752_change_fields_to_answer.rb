class ChangeFieldsToAnswer < ActiveRecord::Migration[5.0]
  def change
  	
  	#remove columns
  	remove_column :answers, :type_numeric, :integer
  	  	
  	#add columns
  	add_column :answers, :value, :string
  end
end

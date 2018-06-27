class AddFormIdToAnswer < ActiveRecord::Migration[5.0]
  def change
  	#add columns
  	add_column :answers, :form_id, :integer
  end
end

class ChangeFields2ToAnswer < ActiveRecord::Migration[5.0]
  def change
  	
  	#remove columns
  	remove_column :answers, :type_decision, :boolean
  	remove_column :answers, :type_date, :date
  	remove_column :answers, :type_text, :text
  	
  	#add columns
  	add_column :answers, :question_id, :integer
  end
end

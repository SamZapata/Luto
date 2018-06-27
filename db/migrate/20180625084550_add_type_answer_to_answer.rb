class AddTypeAnswerToAnswer < ActiveRecord::Migration[5.0]
  def change
  	#add columns
  	add_column :questions, :type_answer, :string
  end
end

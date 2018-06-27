class RemoveTypeAnswerFromAnswer < ActiveRecord::Migration[5.0]
  def change
    remove_column :answers, :type_answer, :string
  end
end

class AddTypeAnswerToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :type_answer, :string
  end
end

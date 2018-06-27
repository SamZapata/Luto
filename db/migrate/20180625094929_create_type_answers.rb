class CreateTypeAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :type_answers do |t|
      t.string :topic

      t.timestamps
    end
  end
end

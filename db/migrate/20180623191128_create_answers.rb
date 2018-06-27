class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :type_numeric
      t.boolean :type_decision
      t.date :type_date
      t.text :type_text

      t.timestamps
    end
  end
end

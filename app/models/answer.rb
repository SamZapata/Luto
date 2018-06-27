class Answer < ActiveRecord::Base
	validates :value, :presence => true
	belongs_to :question

	def self.to_csv
    attributes = %w{form_id question_id created_at value}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |answer|
        csv << attributes.map{ |attr| answer.send(attr) }
      end
    end
  end

end

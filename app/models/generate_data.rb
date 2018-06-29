# ================================================================================ 
# Test Analisistem 
# Project: LUTO FORM 
# Author: Johnny Zapata Serna 
# Description: program to generate data to testing application Luto form
# ================================================================================ 

require 'csv'

class Record
	#declaration of necessary elements
	consecutive_f = 0
	code_q = 0
	date_a = Time.now
	value_a = nil
	@boolean_answer = %w{SI NO}
	forms_trimester = 100
	questions = 9
	row_record = [consecutive_f, code_q, date_a, value_a]
	trimester = [row_record]
	@all_records = [trimester]
	@hash_a = ""
	hash_answers = {@hash_a=>row_record}

	#loop for count the consecutive number of forms
	#puts %w{number, code, date, value}.to_s

	#Generate the file csv
		column_headers = %w{number code date value}
		CSV.open("answers.csv", "w", write_headers:true ,headers: column_headers) do |csv|
		for i in 1..forms_trimester do
			#loop to count questions records
			for j in 1..questions do
				row_record[0] = i
				row_record[1] = j
				row_record[2] = date_a.strftime("%d/%m/%Y")

				#condition to evaluate the questions values
				if j===1 || j===5 || j===9
					row_record[3] = rand(5)
				else
					if j===2 || j===3 || j===4 || j===6 || j===7
						row_record[3] = rand(30)
					else
						if j===8
							row_record[3] = @boolean_answer.sample
						end
					end				
				end
				puts row_record.to_s
				@hash_a = j
				hash_answers < {j=>row_record}
				#puts hash_answers

					csv << row_record
				end
			end
			
		end
	#puts hash_answers
	
end
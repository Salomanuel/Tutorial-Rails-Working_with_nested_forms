Survey::delete_all
Participant::delete_all
Question::delete_all


5.times do |i|
	Survey.create(name: "Survey ##{i+1}")
end

5.times do |i|
	Participant.create(name: "Guy ##{i+1}")
end

Survey.all.each do |i|
	5.times do |j|
		i.questions.create(content: "question number ##{i+1}")
	end
end

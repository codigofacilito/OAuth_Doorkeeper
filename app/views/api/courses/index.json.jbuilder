json.courses @courses do |course|
	json.id course.id
	json.name course.name
	json.description course.description
end
json.extract! question, :id, :question, :answer_id, :created_at, :updated_at
json.url question_url(question, format: :json)

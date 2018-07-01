json.extract! answer_history, :id, :question_id, :answer_id, :created_at, :updated_at
json.url answer_history_url(answer_history, format: :json)

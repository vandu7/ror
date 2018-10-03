json.extract! expense, :id, :EventName, :Rollno, :Amount, :Justification, :Status, :created_at, :updated_at
json.url expense_url(expense, format: :json)

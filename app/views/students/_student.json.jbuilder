json.extract! student, :id, :student_name, :student_DoB, :student_phone, :student_email, :student_address, :created_at, :updated_at
json.url student_url(student, format: :json)

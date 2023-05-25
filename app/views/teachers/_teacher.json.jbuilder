json.extract! teacher, :id, :teacher_name, :teacher_DoB, :teacher_phone, :teacher_email, :teacher_address, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)

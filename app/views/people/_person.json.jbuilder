json.extract! person, :id, :firs_name, :last_name, :address_id, :company_id, :contact_id, :created_at, :updated_at
json.url person_url(person, format: :json)
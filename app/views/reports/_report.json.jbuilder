json.extract! report, :id, :title, :body, :author, :medium, :created_at, :updated_at
json.url report_url(report, format: :json)

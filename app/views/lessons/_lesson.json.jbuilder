json.extract! lesson, :id, :title, :content, :level, :position, :published, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)

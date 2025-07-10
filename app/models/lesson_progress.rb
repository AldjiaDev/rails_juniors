class LessonProgress < ApplicationRecord
  belongs_to :kid
  belongs_to :lesson
end

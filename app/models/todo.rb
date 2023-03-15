class Todo < ApplicationRecord
  enum :status, %i[CREATED IN_PROGRESS COMPLETE CANCELED]
  enum :priority, %i[LOW MEDIUM HIGH]
end

class Notification < ApplicationRecord
    belongs_to :my_user, class_name: 'User', primary_key: :id, foreign_key: :my_id
    belongs_to :user
    has_one :event
end

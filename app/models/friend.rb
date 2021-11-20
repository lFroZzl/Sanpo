class Friend < ApplicationRecord
    belongs_to :my_user, class_name: 'User', primary_key: :id, foreign_key: :my_id
    belongs_to :my_friend, class_name: 'User', primary_key: :id, foreign_key: :friend_id
    has_many :users
    has_many :notifications
end

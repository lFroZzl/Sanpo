class Event < ApplicationRecord
    has_one :location
    has_one :sport
    has_many :comments
    has_many :applicants
    belongs_to :user

end

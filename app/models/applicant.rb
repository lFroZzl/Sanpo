class Applicant < ApplicationRecord
    belongs_to :user
    has_one :event

end

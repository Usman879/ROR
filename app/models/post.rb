class Post < ApplicationRecord
    belongs_to :student, optional: true

    validates :title, presence: true
end

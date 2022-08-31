class Dummy < ApplicationRecord
    has_one :sub_demo

    before_create :greeting_message

    def greeting_message
        puts 'I am called before object create!'
    end
end

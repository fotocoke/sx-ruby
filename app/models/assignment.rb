class Assignment < ApplicationRecord
    belongs_to :user, class_name: "user", foreign_key: "from_id"
    belongs_to :user, class_name: "user", foreign_key: "to_id"
end

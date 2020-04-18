class Exchange < ApplicationRecord
  belongs_to :user
  belongs_to :assignment
  belongs_to :user, class_name: "user", foreign_key: "owner_id"
end

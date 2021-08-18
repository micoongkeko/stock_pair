class Role < ApplicationRecord
    has_many :users, dependent: :destroy # this mean if role is destroy users will destroy also
end

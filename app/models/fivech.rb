class Fivech < ApplicationRecord
    validates :content, {presence: true}
end

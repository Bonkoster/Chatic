class Message < ApplicationRecord
  validates :nick, presence: true, length: {minimum: 2}
  validates :content, presence: true
end

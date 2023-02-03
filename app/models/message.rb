class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat

  validates :body, presence: true

  scope :sorted, -> { order(:created_at) }
end

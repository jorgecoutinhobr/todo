class Item < ApplicationRecord
  belongs_to :list
  belongs_to :user

  enum :priority, [ :minimal, :normal, :critical ]
  enum :status, [ :pending, :in_progress, :completed ]

  validates :title, presence: true
end

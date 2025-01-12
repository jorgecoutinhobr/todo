class Item < ApplicationRecord
  belongs_to :list
  belongs_to :user

  enum :priority, [ :minimal, :normal, :critical ]

  validates :title, presence: true

  default_scope -> { order(completed: :asc, priority: :desc) }
end

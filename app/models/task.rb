class Task < ApplicationRecord
  validates :name, presence: true
  validates :details, presence: true
  validates :completed, presence: true
  # validates: details, inclusion: { in: %w(sample sample_two)}
end

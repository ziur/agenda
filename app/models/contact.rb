class Contact < ActiveRecord::Base
  belongs_to :user
  # ensure that a user_id is present
  validates :user_id, presence: true

  # ensure that title is present and at least 10 chars long
  validates :name, length: { minimum: 6 }, presence: true
  validates :last_name, length: { minimum: 6 }, presence: true

  paginates_per 25
end

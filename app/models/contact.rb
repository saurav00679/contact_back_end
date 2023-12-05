class Contact < ApplicationRecord
  validates :name, presence: true
  validates :contact_number, presence: true, uniqueness: true, length: { is: 10 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "should be a valid email address" }
end

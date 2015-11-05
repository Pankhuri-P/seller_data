class Contact < ActiveRecord::Base

  # Validations
  validates :mobile, format: { with: /\A[0-9]*\z/ }, unless: "self.mobile.blank?"
  validates :primary_phone, format: { with: /\A[0-9]*\z/ }, unless: "self.primary_phone.blank?"
  validates :primary_phone, presence: true
  validates :secondary_phone, format: { with: /\A[0-9]*\z/ }, unless: "self.secondary_phone.blank?"
  validates :email, format: { with: /(^\S)[\w\.\-\+]+@[\w\-]+\.\w+/i }, unless: "self.email.blank?"
  validates :email, presence: true


  # Custom validations
  validate :validate_names
  validate :validate_primary_phone_uniqueness
  validate :validate_unique_email_for_type
  validate :validate_mobile_length
  validate :validate_first_name_length
  validate :validate_last_name_length
  validate :validate_primary_phone_length
  validate :validate_secondary_phone_length

end

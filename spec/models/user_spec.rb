require 'spec_helper'

describe User do
  it { should have_many :sightings }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }



end





 # validates :name, presence: true
 #  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 #  validates :email,
 #            presence: true,
 #            format: { with: VALID_EMAIL_REGEX },
 #            uniqueness: { case_sensitive: false }
 #  validates :password, presence: true, length: { minimum: 6 }
 #  validates :password_digest, presence: true

class Sighting <ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :user_id, :presence => true
  validates :description, :presence => true
end

class Event < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
	validates :longitude, presence: true
	validates :latitude, presence: true
	validates :starttime, presence: true
	validates :organization, presence: true

	has_many :schedules
	has_many :students, :through => :schedules
end

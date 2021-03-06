class Photgram < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, styles: { medium: "300x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :image
end

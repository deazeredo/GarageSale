class Garage < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { large: "600x600>", medium:"300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :image, presence:true   
end

class Product < ActiveRecord::Base
 attr_accessible :pid, :name, :picture, :image
 validates_presence_of :pid, :name, :picture, :image
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_uniqueness_of :pid
  searchable do
    text :name, :boost => 5
    text :pid
  end
end

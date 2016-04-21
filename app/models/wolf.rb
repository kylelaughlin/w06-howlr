#Name : string representing the wolf's Name
#image : string representing the url to an image profile
#description : string representing the description of the wolf

class Wolf < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
  validates :description, presence: true

end

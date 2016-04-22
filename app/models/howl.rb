#howl_text: a string representing the content of the howl
#howl_image: a string representing the url to an image (optional)
#wolf_id: an integer representing the id of the wolf that made the howl
#created_at: a datetime object representing the time at which a howl was created
#updated_at: a datetime object represtning the time at which a howl was updated_at

class Howl < ActiveRecord::Base

  validates :content, presence: true
  validates :wolf_id, presence: true

  belongs_to :wolf

end

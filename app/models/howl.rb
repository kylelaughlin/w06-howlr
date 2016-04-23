#howl_text: a string representing the content of the howl
#howl_image: a string representing the url to an image (optional)
#wolf_id: an integer representing the id of the wolf that made the howl
#created_at: a datetime object representing the time at which a howl was created
#updated_at: a datetime object represtning the time at which a howl was updated_at

class Howl < ActiveRecord::Base

  validates :content, presence: true
  validates :wolf_id, presence: true

  belongs_to :wolf

  # Finds the number of days between the current date (today) and the day the
  # => howl was created and returns the appropriate string.
  #
  # Returns a string representing the time period from howl to today
  def days_since_howl
    days = (Date.today - self.created_at.to_date).to_i
    case days
    when 0
      "Today"
    when 1
      "Yesterday"
    when 2
      "2 Days Ago"
    when 3
      "3 Days Ago"
    when 4
      "4 Days Ago"
    when 5
      "5 Days Ago"
    when 6
      "6 Days Ago"
    when 7
      "Over A Week Ago"
    else
      "Long Ago"
    end
  end

end

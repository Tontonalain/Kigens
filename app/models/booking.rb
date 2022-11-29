class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  has_many :reviews, dependent: :destroy

  def accepted_status
    case accepted
    when "in-progress"
      "en cours"
    when "not-accepted"
      "refusé"
    when "accepted"
      "accepté"
    end
  end
end

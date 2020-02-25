class Log < ApplicationRecord
  validates :activityname, presence: { message: ' must not be blank' }
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if timeend.blank? || timestart.blank?
    if timeend < timestart
      errors.add(:timeend, 'must be after start time')
    end
  end
end

class Appoint < ApplicationRecord
  validates :title, 
    presence: true,
    length: {maximum:20}
    
  validates :start_date,
    presence: true
    
  validates :end_date,
    presence: true
    
  validates :memo,
    length: {maximum:500}

  validate :period_check
  def period_check
    unless self.start_date.blank? and self.end_date.blank?
      errors.add(:end_time, "は開始時刻より遅い時間を選択してください") if self.start_date > self.end_date
    end
  end
end
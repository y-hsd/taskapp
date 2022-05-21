class Post < ApplicationRecord
    validates :title, presence: true
    validates :contents, length: {maximum:300 }
    validates :start_date, presence: true
    validates :end_date, presence: true
    validate :start_end_check


    def start_end_check
      return if end_date.blank? || start_date.blank?
      errors.add(:end_date, "は開始日以降のものを選択してください") if
      end_date < start_date
    end

end


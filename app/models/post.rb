class Post < ActiveRecord::Base
  # Method 1
  # include ActiveModel::Validations
  # validates_with PostAfterTodayValidator

  # Method 2
  # validates :post_on, date_after_today: true

  # Method 3
  # validate :post_date_must_be_after_today
  # def post_date_must_be_after_today
  #   unless post_on > Date.today
  #     errors.add(:post_on, "must be after today")
  #   end
  # end
end

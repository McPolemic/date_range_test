class PostAfterTodayValidator < ActiveModel::Validator
  def validate(record)
    unless record.post_on > Date.today
      record.errors[:post_on] << 'Must set the post to appear after today!'
    end
  end
end
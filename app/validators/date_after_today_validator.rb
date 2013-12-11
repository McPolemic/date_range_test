class DateAfterTodayValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value > Date.today
      record.errors[attribute] << (options[:message] || "date is not after today")
    end
  end
end
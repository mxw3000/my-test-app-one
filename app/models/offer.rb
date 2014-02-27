class Offer < ActiveRecord::Base
  validates :title, :text, :price, :seller, presence: true
  validates :title,
    length: {
      minimum: 5,
      maximum: 80,
      #tokenizer: lambda { |str| str.scan(/\w+/) },
      #too_short: "must have at least %{count} words",
      #too_long: "must have at most %{count} words"
    }
  validates :text,
    length: {
      minimum: 10,
      maximum: 10*1024
    }
  validates :seller,
    length: {
      minimum: 5,
      maximum: 40
    }
end

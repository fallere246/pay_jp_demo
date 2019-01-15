class Payment < ApplicationRecord
  belongs_to :hotel

  enum status: {
    unpurchased: 0,
    success: 1,
    faild: 0
  }
end

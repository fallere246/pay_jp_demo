class Payment < ApplicationRecord
  belongs_to :hotel
  after_create :pay

  enum status: {
    unpurchased: 0,
    success: 1,
    faild: 0
  }

  private
    def pay
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      p = Payjp::Charge.create(
        amount: self.price,
        card: self.token,
        currency: 'jpy',
      )
      logger.debug p
    rescue
      self.errors.add(:token, 'charge error')
      raise ActiveRecord::Rollback
    end
end

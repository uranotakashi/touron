# class User < ApplicationRecord
#   devise :invitable, :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable

#   validates :username, presence: true, uniqueness: true

#   before_validation :assign_random_username, if: -> { username.blank? }

#   def assign_random_username
#     self.username = SecureRandom.hex(10) # 20文字のランダムな文字列
#   end
# end

class User < ApplicationRecord
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true

  before_validation :assign_random_username, if: -> { username.blank? }

  def assign_random_username
    self.username = SecureRandom.hex(10) # 20文字のランダムな文字列
    Rails.logger.debug "New username assigned: #{username}" # デバッグ情報の追加
  end
end
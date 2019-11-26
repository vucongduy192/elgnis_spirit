class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, :omniauth_providers => [:google_oauth2]
  has_many :images
  has_many :friendships
  has_many :messages
  has_many :subscriptions
  has_many :chats, through: :subscriptions


  mount_uploader :avatar, AvatarUploader
  def existing_chats_users
    existing_chat_users = []
    self.chats.each do |chat|
      existing_chat_users.concat(chat.subscriptions.where.not(user_id: self.id).map {|subscription| subscription.user})
    end
    existing_chat_users.uniq
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    unless user
      password = Devise.friendly_token[0,20]
      user = User.create(name: data["name"], email: data["email"],
        password: password, password_confirmation: password
      )
    end
    user
  end

  # validates_presence_of   :avatar
  # validates_integrity_of  :avatar
  # validates_processing_of :avatar
end

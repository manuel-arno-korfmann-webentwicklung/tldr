class User < ApplicationRecord
  has_many :study_group_attendances, dependent: :destroy
  
  serialize :zoom_oauth_data
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[zoom]
         
         
         def self.from_omniauth(auth)
           where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
             user.email = auth.extra.raw_info.email
             user.password = Devise.friendly_token[0, 20]
             user.first_name = auth.extra.raw_info.first_name   # assuming the user model has a name
             user.last_name = auth.extra.raw_info.last_name
             user.zoom_oauth_data = auth.credentials
             user.zoom_user_id = auth.extra.raw_info.id
             #user.image = auth.info.image # assuming the user model has an image
             # If you are using confirmable and the provider(s) you use validate emails, 
             # uncomment the line below to skip the confirmation emails.
             # user.skip_confirmation!
           end
         end
         
end

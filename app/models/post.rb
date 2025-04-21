class Post < ApplicationRecord
   has_one_attached :image
   
   belongs_to :user
   has_many :post_comments, dependent: :destroy
   has_many :favorites, dependent: :destroy
   has_one_attached :profile_image
   has_one_attached :image
   
   validates :shop_name, presence: true
   validates :image, attached: true, content_type: ['image/png', 'image/jpeg'], size: { between: 1.kilobyte..1.megabytes , message: '画像容量が大きすぎます。1MB以下にしてください。' }
   validates :caption, presence: true

   
   def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
   end
   
end

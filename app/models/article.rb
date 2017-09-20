class Article < ApplicationRecord

    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimum: 5 }
    has_attached_file :image, styles: { cover: "1200x1200>", large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/No photograph.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

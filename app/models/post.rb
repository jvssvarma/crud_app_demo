class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2, maximum: 200}
  validates :body, presence: true, length: {minimum: 3, maximum: 5000}

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

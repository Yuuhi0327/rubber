class Pen < ApplicationRecord
  belongs_to :user, optional: true  
  mount_uploader :image, ImageUploader
    
    has_many :comments, dependent: :destroy

     #tweetsテーブルから中間テーブルに対する関連付け
  has_many :pen_tag_relations, dependent: :destroy
  #tweetsテーブルから中間テーブルを介してTagsテーブルへの関連付け
  has_many :tags, through: :pen_tag_relations, dependent: :destroy

end

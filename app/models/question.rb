class Question < ActiveRecord::Base
	has_many :choices, dependent: :destroy
	has_many :votes
	belongs_to :Category
	belongs_to :user

	has_attached_file :ques_pic, styles: { large_pic: "600x400>", medium_pic: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :ques_pic, content_type: /\Aimage\/.*\Z/

	accepts_nested_attributes_for :choices, reject_if: proc { |attributes| attributes['option'].blank?}, allow_destroy: true
	
	validates_presence_of :title, :user_id, :category_id
end

class Post < ActiveRecord::Base
belongs_to :user
validates :name,        presence: true, length: {minimum: 5, maximum: 100}
validates :summary,     presence: true, length: {minimum: 10, maximum: 150}
validates :description, presence: true, length: {minimum: 20, maximum: 500}
end
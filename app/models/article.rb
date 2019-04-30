class Article < ApplicationRecord

  belongs_to :user
  #1つの投稿は必ずユーザーと結びついている

end

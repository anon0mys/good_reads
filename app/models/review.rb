class Review < ApplicationRecord
  belongs_to :books
  belongs_to :users
end

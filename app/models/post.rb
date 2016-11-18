class Post < ApplicationRecord
  validates :title, presence: true,
                    uniqueness: { case_sensitive: false,
                                  message: 'must be unique' },
                    length: { minimum: 5 }

  validates :body, presence: true
end

class Folder < ApplicationRecord
  validates :folder_name, presence: true

  has_many :memos, dependent: :destroy
end

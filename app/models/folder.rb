class Folder < ApplicationRecord
  validates :folder_name, presence: true
end

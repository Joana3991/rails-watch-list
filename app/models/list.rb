class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy # a acao depende da lista, entao ela que chama o metodo
  has_many :movies, through: :bookmarks

  validates :name, uniqueness: true, presence: true
end

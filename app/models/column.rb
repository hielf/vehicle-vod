class Column < ApplicationRecord


  has_many :user_columns
  has_many :video_column_ships
  has_many :videos, through: :video_column_ships
  belongs_to :category

  STATUS = {'下线': 0, '上线': 1}

  validates :status, presence: true, inclusion: {in: [0, 1]}
  validates :category_id, presence: true
  validates :name, presence: true, uniqueness: true
  validates :en_name, presence: true #, format: {with: /\A[a-zA-Z .]+\z/i, message: '只能包含英文、空格、.'}

  def has_use?
    self.video_column_ships.exists?
  end
end

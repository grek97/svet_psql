class Item < ApplicationRecord
 
  # Ограничения на вводимые данные для добавления в базу данных
  #ВАЛИДНОСТИ
  validates :price, numericality: {greater_than: 0}
  validates :name, :description, presence: true


  #КОЛБЭКИ
  after_initialize {puts '-------------initialize'}
  after_save       {puts '-------------save'}
  after_create     {puts '-------------create'}
  after_update     {puts '-------------update'}
  after_destroy    {puts '-------------destroy'}
  
end
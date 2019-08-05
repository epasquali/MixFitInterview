class Recipe < ApplicationRecord
  belongs_to :postman_user
  #default_scope -> { order(created_at: :desc) }

  validates :postman_user_id, presence:true

  validates :IntakeVitC, :IntakeVitD3, :IntakeIron, presence:true, 
                                                    numericality: {only_integer: true, 
                                                                   greater_than_or_equal_to: 4,
                                                                   less_than_or_equal_to: 10}
  

  validates :ActivityVitC, :ActivityVitD3, :ActivityIron, presence:true, 
                                                          numericality: {only_integer: true, 
                                                                         greater_than_or_equal_to: 1,
                                                                         less_than_or_equal_to: 3}
  
end

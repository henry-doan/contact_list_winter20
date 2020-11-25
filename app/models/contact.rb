class Contact < ApplicationRecord
  # Associations 
  # describing the relationship between models

   # child model
  # belongs_to

   # parent model
  # has_many
  # has_one 

  # has_many :through
  # has_one :through
  # dependent 

  has_many :notes, dependent: :destroy
  # has_one :note 
  has_one :address, dependent: :destroy

  # Validations
    # make sure that data comes in following certain constraints.

    # confirmation - two field have the exact same content
      # password             123
      # password_confirmation 123

    # inclusion make sure a value is included inside a given set 
    # class Coffee < ActiveRecord::Base
    #   validates :size, inclusion: { 
    #     in: %w(small medium large),
    #       message: "%{value} is not a valid size" 
    #   }
    # end
    

    # length how long a attr value should be
      # class Person < ActiveRecord::Base
      #   validates :name, length: { minimum: 2 }
      #   validates :bio, length: { maximum: 500 }
      #   validates :password, length: { in: 6..20 }
      #   validates :registration_number, length: { is: 6 }
      # end

    # numericality 
    #   class Player < ActiveRecord::Base
    #     validates :points, numericality: true
    #     validates :games_played, numericality: { only_integer: true }
    #     validates :golf_handicap, numericality: { less_than_or_equal_to: 40.4, greater_than_or_equal_to: 2 }
    #   end
    
    # presence 
    #   validates :first_name, :last_name, :phone, presence: true 

    # uniqueness 
    #   validates :email, uniqueness: true

    # Validations options 
      # allow_nil - accept a nil value 
      # validates :first_name, :last_name, :phone, presence: true, allow_nil: true 
      #   nil smith 123341

      # allow_blank - accept a empty string
      # validates :first_name, :last_name, :phone, presence: true, allow_blank: true 
      # #   '' smith 123341

      # message - let you write error messages

      # on when the validtion should happen
      # validates :email, uniqueness: true, on: :create
      # validates :age, numericality: true, on: :update
      # validates :name, presence: true, on: :save

  # Callbacks 
    # trigger, logic trigger at a certain time, declare the time 
    # before_validation
    # after_validation
    # before_save 
    # after_save 
    # around_save
    # before_create 
    # after_create 
    # around_create

    # class CreditCard < ActiveRecord::Base
    #   before_save :encrypt_card_number
     
    #   private
     
    #     def encrypt_card_number
    #       self.card_number = bcrypt(self.card_number)
    #     end
    # end

  # Attr. Serialization
    # class Person < ActiveRecord::Base
    #   belongs_to :account
    #   serialize :hobbies, Array
    # end

    # class Person
    #   has_many :hobbies
    # end 

    # class Hobby
    #   belongs_to :person
    # end


  # Model Methods 
    # Fat Model, skinny controllers - all logic or anything else would be in the model 
    # controllers actions 

  # class method 
  # def self.sort_by_first_name 
  #   order(:first_name)
  # end

  # Person.sort_by_first_name

  # instance method 

  # def full_name 
  #   "#{self.first_name} #{self.last_name}"
  # end

  # katy.full_name 

end

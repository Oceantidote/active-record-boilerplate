class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations
  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  validates :last_name, length: { minimum: 3, maximum: 8 }



  # validates :last_name, uniqueness: true
  # validates :email, format: { with: /\A.*@.*\.com\z/ }
  # validates :age, numericality: true
  # def patients
  #   patients = []
  #   self.consultations.each do |consultation|
  #     patients << consultation.patient
  #   end
  #   patients
  # end
end

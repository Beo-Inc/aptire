class Appointment < ApplicationRecord
  validates :appointment_host_id, presence: true
  validates :appointment_guest_id, presence: true
  validates :time, presence: true
  validates :online_link, presence: true

  belongs_to :appointment_host, -> { where hiring_manager: true }, class_name: 'User'
  belongs_to :appointment_guest, -> { where developer: true }, class_name: 'User'
end
class Audition < ActiveRecord::Base
  belongs_to :role

  def role_audition
    self.role.find(role_id)
  end

  def call_back
    self.update(hired: true)
end
end
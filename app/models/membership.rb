class Membership < ApplicationRecord
    validates :client_id, uniqueness: {scope: :gym_id}

    # validates :charge, presence: true

    # validates :gym_id, presence: true

    belongs_to :gym
    belongs_to :client


end

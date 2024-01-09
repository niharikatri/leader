class Note < ApplicationRecord
    belongs_to :lead

    # validates :author, :creation_date, :note, presence: true
end

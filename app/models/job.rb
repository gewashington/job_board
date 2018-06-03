class Job < ApplicationRecord
    def featured?
      description.present?
    end
end

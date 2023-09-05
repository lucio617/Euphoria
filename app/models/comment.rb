class Comment < ApplicationRecord
    belongs_to :video, foreign_key: 'v_id'
end

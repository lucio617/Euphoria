class CommentsController < ApplicationController
    def add
        
       @cm= Comment.create(
            v_id:params[:v_id],
            u_name:"temp",
            desc:params[:comment]
        )
        if @cm.errors.any?
            @cm.errors.each do |error|
                puts "#{error.attribute}: #{error.full_message}"
              end
        end
        
        redirect_to "/stream"
        
    end
end

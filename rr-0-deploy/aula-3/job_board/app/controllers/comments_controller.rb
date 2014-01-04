class CommentsController < ApplicationController
	def create
		@job = Job.find(params[:job_id])
		@comment = @job.comments.build(comment_params)
		if @comment.save
			flash[:notice] = "Comment has created successfully"
		else
			flash[:alert] = "Please change the fields bellow"
		end
		redirect_to @job
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to @comment.job, notice: 'Redirecionado'
	end

	def comment_params
      params.require(:comment).permit!
    end
end
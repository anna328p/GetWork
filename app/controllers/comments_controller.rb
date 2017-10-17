class CommentsController < ApplicationController
	def create
		@project = Project.find(params[:project_id])
		@comment = @project.comments.new(comment_params)
		@comment.user = current_user
		@comment.project = @project
		@comment.save
		# @comment = @project.comments.create(comment_params)
		redirect_to @project
	end
 
	private
		def comment_params
			params.require(:comment).permit(:title, :user, :project, :body)
		end
end
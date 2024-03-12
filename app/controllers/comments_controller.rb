class CommentsController < ApplicationController
    before_action :authenticate_user!
  
    def create
      pen = Pen.find(params[:pen_id])
      comment = pen.comments.build(comment_params) 
      comment.user_id = current_user.id
      if comment.save
        flash[:success] = "コメントしました"
        redirect_back(fallback_location: root_path) #直前のページにリダイレクト
      else
        flash[:success] = "コメントできませんでした"
        redirect_back(fallback_location: root_path) #直前のページにリダイレクト
      end
    end
  
    private
  
      def comment_params
        params.require(:comment).permit(:content)
      end
  end

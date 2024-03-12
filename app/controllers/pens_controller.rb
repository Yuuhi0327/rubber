class PensController < ApplicationController

     before_action :authenticate_user!, only: [:new, :create]

    def index
        @pens= Pen.all
        @tags = Tag.all
        @pens = @pens.where("rubbers_name LIKE ? ",'%' + params[:search] + '%') if params[:search].present?
        #もしタグ検索したら、post_idsにタグを持ったidをまとめてそのidで検索
        if params[:tag_ids].present?
          pen_ids = []
          params[:tag_ids].each do |key, value| 
            if value == "1"
              Tag.find_by(name: key).pens.each do |p| 
                pen_ids << p.id
              end
            end
          end
          pen_ids = pen_ids.uniq
          #キーワードとタグのAND検索
          @pens = @pens.where(id: pen_ids) if pen_ids.present?
        end
    end

    def new
        @pen = Pen.new
      end
    
      def create
        pen = Pen.new(pen_params)
        pen.user_id = current_user.id
        if pen.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @pen = Pen.find(params[:id])
        @comments = @pen.comments
        @comment = Comment.new
      end

      def edit
        @pen = Pen.find(params[:id])
      end

      def update
        pen = Pen.find(params[:id])
        if pen.update(pen_params)
          redirect_to :action => "show", :id => pen.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        pen = Pen.find(params[:id])
        pen.destroy
        redirect_to action: :index
      end
    
      private
      def pen_params
        params.require(:pen).permit(:rubbers_name, :company_name, :image, :strong_point, :weak_point, :overall, tag_ids: [])
      end

end

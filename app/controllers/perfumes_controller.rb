class PerfumesController < ApplicationController
    def index
    end

    def new
        @perfume = Perfume.new
    end

    def show
        @perfume = Perfume.find_by(id: params[:id])
    end

    def create
        perfume = Perfume.new(perfume_params)
        if perfume.save
            flash[:notice] = "診断が完了しました"
            redirect_to perfume_path(perfume.id)
        else
            redirect_to :action => "new"
        end
    end

    def question1
    end
    
    def question2
    end
    
    def question3
    end
    
    def question4
    end

    def question5
    end
    
    def question6
    end
    
    def question7
    end
    
    def question8
    end

    def question9
    end
    
    def question10
    end
    
    def question11
    end
    
    def question12
    end

    def question13
    end
    
    def question14
    end
    
    def question15
    end
    
    def question16
    end

    def question17
    end
    
    def question18
    end
    
    def question19
    end
    
    def question20
    end

    def question21
    end
    
    def question22
    end
    
    def question23
    end
    
    def question24
    end

    def question25
    end
    
    def question26
    end
    
    def question27
    end
    
    def question28
    end

    def question29
    end
    
    def question30
    end
    
    def question31
    end
    
    def question32
    end

    def question33
    end
    
    def question34
    end
    
    def question35
    end
    
    def question36
    end

    def question37
    end
    
    def question38
    end
    
    def question39
    end
    
    def question40
    end

    def question41
    end
    
    def question42
    end
    
    def question43
    end
    
    def question44
    end

    def question45
    end
    
    def question46
    end
    
    def question47
    end

    def show1
    end
    
    def show2
    end
    
    def show3
    end
    
    def show4
    end
    
    def show5
    end
    
    def show6
    end

    def show7
    end
    
    def show8
    end
    
    def show9
    end
    
    def show10
    end
    
    def show11
    end
    
    def show12
    end

    def show13
    end
    
    def show14
    end
    
    def show15
    end
    
    def show16
    end
    
    def show17
    end
    
    def show18
    end

    def show19
    end
    
    def show20
    end
    
    def show21
    end
    
    def show22
    end
    
    def show23
    end
    
    def show24
    end

    def show25
    end
    
    def show26
    end
  
  private
    def perfume_params
        params.require(:perfume).permit(:question1, :question2, :question3, :question4)
    end
end


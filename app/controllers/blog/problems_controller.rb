module Blog
  class ProblemsController < BlogController

    def index
      @problems = Problem.most_recent
    end

    # GET /problems/1
    # GET /problems/1.json
    def show
      @problem = Problem.friendly.find(params[:id])
    end

  end
end

class Team

    attr_accessor :name, :motto

    def initialize(name, motto)
      @name = params[:name]
      @motto = params[:motto]
    end
    
end

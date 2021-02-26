class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def project_backers
        ProjectBacker.all.select{|projectbacker| projectbacker.project == self}
    end

    def backers
        project_backers.map do |project_backer|
            project_backer.backer
        end
    end
end
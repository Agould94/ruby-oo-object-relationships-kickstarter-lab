class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def project_backer
        ProjectBacker.all.select{|project| project.backer == self}
    end

    def backed_projects
        project_backer.map{|project_backer| project_backer.project}
    end



end
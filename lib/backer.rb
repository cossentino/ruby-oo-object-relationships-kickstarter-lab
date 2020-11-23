


class Backer


    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pbs = ProjectBacker.all.select {|pb| pb.backer == self}
        pbs.collect {|pb| pb.project}
    end
    


end
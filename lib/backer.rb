require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backers
        ProjectBacker.all.select { |project_backer| project_backer.backer == self}
    end
    
    def backed_projects
        backers.map {|project_backer| project_backer.project}
    end

end
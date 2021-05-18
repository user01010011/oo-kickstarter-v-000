class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = [ ]
  end

  def back_projects(project)
    backed_projects << project
    Project.backers << self
  end

end

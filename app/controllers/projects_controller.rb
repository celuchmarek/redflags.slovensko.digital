class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id]).published_revision
    @rating_types_by_phase = RatingType.all.group_by(&:rating_phase)
    @ratings_by_type = @project.ratings.index_by(&:rating_type)
  end

  def index
    @rating_types_by_phase = RatingType.all.group_by(&:rating_phase)
    @projects = Project.published.map { |p| p.published_revision }.sort_by(&:total_score_percentage).reverse
  end
end

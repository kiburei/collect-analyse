class SourcesController < ApplicationController

  def new
    @source = Source.new
  end

  def create
  	@source = Source.new(source_params)
  	respond_to do |format|
  		if @source.save
  			format.html { redirect_to root_path, notice: 'Source Added' }
  		else
  			format.html { redirect_to root_path, notice: 'Error while trying to ad record' }
  		end
  	end
  end

  private

  def source_params
		params.require(:source).permit(:name, :link, :medium)
	end

end

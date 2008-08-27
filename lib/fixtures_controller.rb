class FixturesController < ActionController::Base

  def index
    @all_fixtures = ActiveRecord::Base.fixtures.to_hash

    respond_to do |format|
      format.json { render :json => @all_fixtures.to_json }
      format.xml  { render :xml  => @all_fixtures.to_xml }
    end
  end

  def fixture
    @fixtures = ActiveRecord::Base.fixtures[params[:fixturename]]

    respond_to do |format|
      format.json { render :json => @fixtures.to_json }
      format.xml  { render :xml  => @fixtures.to_xml }
    end
  end
end


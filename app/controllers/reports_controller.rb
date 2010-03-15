class ReportsController < ApplicationController
  before_filter :authenticate


def progress
    @lifts = Lift.all
    @exercises = Exercise.all
    @progress_data_link = formatted_progress_reports_url(:xml)
    respond_to do |format|
      format.html
      format.xml  { render :action => "progress.xml.builder", :layout => false }
    end
  end
  
end
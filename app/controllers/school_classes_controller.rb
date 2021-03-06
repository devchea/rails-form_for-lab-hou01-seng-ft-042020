class SchoolClassesController < ApplicationController


  def show
    @school_classes = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.new
    @school_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:title]
    @school_class.save
    
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.new
    @school_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:title]
    @school_class.save

    redirect_to school_class_path(@school_class)
  end


end

class TypeController < ApplicationController

	def create
    @type = Type.new(type_params)

    respond_to do |format|
      if @type.save
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end


end

class Cheese < ApplicationRecord
  
  def summary
    "#{name}: $#{price}"
  end

  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese, except: [:created_at, :updated_at], methods: [:summary]
  end

end

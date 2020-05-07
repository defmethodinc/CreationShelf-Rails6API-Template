class Api::V1::CreationsController < Api::ApiController
  def index
    render json: { data: Creation.all }, status: 200
  end
end

class Api::V1::CreationsController < Api::ApiController
  def index
    render json: Creation.all
  end
end

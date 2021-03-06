class ColumnsController < ApplicationController
  def index
    @columns = Column.order(:id)

    render json: @columns, include: { cards: { include: [ :user, :column ], except: [:user_id, :column_id] }}
  end
end

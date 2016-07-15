class QrcodesController < ApplicationController
  before_action :set_qrcode, only: [:show, :update, :destroy]
  wechat_api

  # GET /qrcodes
  def index
    # wechat_oauth2 do |openid|
    #   ap openid
    # end
    ap wechat.jsapi_ticket.signature('https://meiqia.com')
    @qrcodes = Qrcode.all

    render json: @qrcodes
  end

  # GET /qrcodes/1
  def show
    render json: @qrcode
  end

  # POST /qrcodes
  def create
    @qrcode = Qrcode.new(qrcode_params)

    if @qrcode.save
      render json: @qrcode, status: :created, location: @qrcode
    else
      render json: @qrcode.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /qrcodes/1
  def update
    if @qrcode.update(qrcode_params)
      render json: @qrcode
    else
      render json: @qrcode.errors, status: :unprocessable_entity
    end
  end

  # DELETE /qrcodes/1
  def destroy
    @qrcode.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_qrcode
    @qrcode = Qrcode.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def qrcode_params
    params.fetch(:qrcode, {})
  end
end

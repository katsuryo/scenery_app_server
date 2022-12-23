class Api::User::Mutations::Users::CreateForm
  include ActiveModel::Model

  attr_reader :name, :email

  validates :name, :email, presence: true

  def initialize(params)
    @name = params[:name]
    @email = params[:email]
  end

  def create
    User.create!(valid_params)
  rescue StandardError => e
    { json: ErrorResponse.base_response(e.message, STATUS_FATAL) }
  end

  private

  def valid_params
    {
      name:,
      email:
    }
  end
end

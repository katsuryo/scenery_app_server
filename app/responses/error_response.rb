class ErrorResponse
  class << self
    def base_response(error, code)
      raise GraphQL::ExecutionError.new(error, extensions: { code: })
    end
  end
end

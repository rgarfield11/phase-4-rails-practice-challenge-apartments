class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    private

    def render_record_invalid(invalid)
        render json: invalid.record.errors.full_messages, status: :unprocessable_entity
    end

    def render_record_not_found(error)
        render json: error, status: :not_found
    end

end

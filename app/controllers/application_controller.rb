class ApplicationController < ActionController::Base
  around_action :set_timezone

  private
    def set_timezone
      logger.debug("*** Before / set_timezone")
      yield
      logger.debug("*** After / set_timezone")
    end
end

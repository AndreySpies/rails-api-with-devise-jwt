# frozen_string_literal: true

# Fix for Devise and Rails 7
module RackSessionFix
  extend ActiveSupport::Concern

  # Fix for Devise and Rails 7
  class FakeRackSesion < Hash
    def enabled?
      false
    end
  end

  included do
    before_action :set_fake_rack_session_for_devise

    private

    def set_fake_rack_session_for_devise
      request.env['rack.session'] ||= FakeRackSesion.new
    end
  end
end

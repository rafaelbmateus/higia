require 'rails_helper'

RSpec.describe "AddFieldsToDrugstores", type: :request do
  describe "GET /add_fields_to_drugstores" do
    it "works! (now write some real specs)" do
      get add_fields_to_drugstores_path
      expect(response).to have_http_status(200)
    end
  end
end

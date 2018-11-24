require 'rails_helper'

RSpec.describe "AddFieldsToDrugstoreMedicines", type: :request do
  describe "GET /add_fields_to_drugstore_medicines" do
    it "works! (now write some real specs)" do
      get add_fields_to_drugstore_medicines_path
      expect(response).to have_http_status(200)
    end
  end
end

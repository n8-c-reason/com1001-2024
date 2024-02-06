RSpec.describe "params example" do
  describe "GET /params" do
    context "when supplied with no parameters" do
      it "has a status code of 200 (OK)" do
        get "/params"
        expect(last_response.status).to eq(200)
      end
    end

    context "when supplied with one parameter" do
      it "includes the key and value of the parameter in the body of the page" do
        get "/params", "my_key" => "my_value"
        expect(last_response.status).to eq(200)
        expect(last_response.body).to include("my_key")
        expect(last_response.body).to include("my_value")
      end
    end
  end
end

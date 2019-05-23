require 'rails_helper'
RSpec.describe StaticPagesController, type: :controller do
    render_views

    let(:base_title){"Ruby on Rails Tutorial Sample App"}

    describe "#home" do
        # 正常にレスポンスを返すこと 
        it "responds successfully" do 
            get :home
            expect(response).to be_success
            #assert_select "title", "Home | #{base_title}"
            expect(response.body).to(match("Home | #{base_title}"))
        end
    end

    describe "#help" do
        it "raise" do
            get :help
            expect(response.code).to eq 500
        end
    end
end
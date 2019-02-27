require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
    
    
    def setup
        @category = Category.create(name: "neuroscience")
    end
    
    test "should get categories index" do
        get :index
        assert_response :success
    end
    
    test "should get new" do
        get :new
        assert_response :success
    end
    
    test "should get show" do
        #get(:show, {'id'=> @category.id}) 
        #assert_response :success
       get category_path(@category)
       assert_response :success
    end
    
end
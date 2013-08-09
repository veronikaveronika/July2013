require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post :create, parent: { desc: @parent.desc, dob: @parent.dob, doc: @parent.doc, doc_number: @parent.doc_number, family_id: @parent.family_id, first_name: @parent.first_name, last_name: @parent.last_name, middle_name: @parent.middle_name, phone: @parent.phone, sex: @parent.sex }
    end

    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should show parent" do
    get :show, id: @parent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parent
    assert_response :success
  end

  test "should update parent" do
    patch :update, id: @parent, parent: { desc: @parent.desc, dob: @parent.dob, doc: @parent.doc, doc_number: @parent.doc_number, family_id: @parent.family_id, first_name: @parent.first_name, last_name: @parent.last_name, middle_name: @parent.middle_name, phone: @parent.phone, sex: @parent.sex }
    assert_redirected_to parent_path(assigns(:parent))
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete :destroy, id: @parent
    end

    assert_redirected_to parents_path
  end
end

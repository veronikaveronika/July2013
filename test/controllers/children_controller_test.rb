require 'test_helper'

class ChildrenControllerTest < ActionController::TestCase
  setup do
    @child = children(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:children)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child" do
    assert_difference('Child.count') do
      post :create, child: { desc: @child.desc, dob: @child.dob, doc: @child.doc, doc_number: @child.doc_number, family_id: @child.family_id, first_name: @child.first_name, last_name: @child.last_name, middle_name: @child.middle_name, sex: @child.sex, short_name: @child.short_name }
    end

    assert_redirected_to child_path(assigns(:child))
  end

  test "should show child" do
    get :show, id: @child
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child
    assert_response :success
  end

  test "should update child" do
    patch :update, id: @child, child: { desc: @child.desc, dob: @child.dob, doc: @child.doc, doc_number: @child.doc_number, family_id: @child.family_id, first_name: @child.first_name, last_name: @child.last_name, middle_name: @child.middle_name, sex: @child.sex, short_name: @child.short_name }
    assert_redirected_to child_path(assigns(:child))
  end

  test "should destroy child" do
    assert_difference('Child.count', -1) do
      delete :destroy, id: @child
    end

    assert_redirected_to children_path
  end
end

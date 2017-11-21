require 'test_helper'

class IniciodeptoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get iniciodepto_index_url
    assert_response :success
  end

  test "should get pde" do
    get iniciodepto_pde_url
    assert_response :success
  end

  test "should get inicio" do
    get iniciodepto_inicio_url
    assert_response :success
  end

  test "should get historia" do
    get iniciodepto_historia_url
    assert_response :success
  end

  test "should get misionvision" do
    get iniciodepto_misionvision_url
    assert_response :success
  end

  test "should get editarinicio" do
    get iniciodepto_editarinicio_url
    assert_response :success
  end

  test "should get editarhistoria" do
    get iniciodepto_editarhistoria_url
    assert_response :success
  end

  test "should get editarmisionvision" do
    get iniciodepto_editarmisionvision_url
    assert_response :success
  end

  test "should get editarpde" do
    get iniciodepto_editarpde_url
    assert_response :success
  end

  test "should get nuevotexto" do
    get iniciodepto_nuevotexto_url
    assert_response :success
  end

  test "should get eliminartexto" do
    get iniciodepto_eliminartexto_url
    assert_response :success
  end

  test "should get nuevopde" do
    get iniciodepto_nuevopde_url
    assert_response :success
  end

  test "should get eliminarpde" do
    get iniciodepto_eliminarpde_url
    assert_response :success
  end

end

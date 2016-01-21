require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(Nombre: "Example User", Correo: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end
end

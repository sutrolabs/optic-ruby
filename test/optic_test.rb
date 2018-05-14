require "test_helper"

class OpticTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Optic::VERSION
  end
end

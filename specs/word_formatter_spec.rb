require 'minitest/autorun'
require_relative '../models/word_formatter'

class Test_Word_Formatter < Minitest::Test

  def setup
    @wordformatter1 = WordFormatter.new({address: '3 ARGYLE HOUSE', building: 'CODEBASE', postcode: 'e13 zqf', phone: '0131558030'})
    @wordformatter2 = WordFormatter.new('code_clan_cohort_4')
  end

  def test_upcase
    result = @wordformatter1.upcase_postcode
    assert_equal({address: '3 ARGYLE HOUSE', building: 'CODEBASE', postcode: 'E13 ZQF', phone: '0131558030'}, result)
  end

  def test_camelcase
    result = @wordformatter2.camelcase('code clan cohort 4')
    assert_equal('CodeClanCohort4', result)
  end

end 
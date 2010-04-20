%w(../
   ../../lib).each { |load_path| $LOAD_PATH.unshift(File.expand_path(load_path, __FILE__)) }


require "require_gist"

describe "RequireGist" do
  it "requires gists" do
    require_gist "372689/df2b91fc88db48e3fa58a1cfffdbf214651a1bbf/require_gist_test_gist.rb"
    ::RequireGistTestGist.should == 4
  end

  it "requires gists and checks SHA1" do
    require_gist "372689/df2b91fc88db48e3fa58a1cfffdbf214651a1bbf/require_gist_test_gist.rb", "cddb5f13eb08f46a6e0b1c9fdccb80bc237f3c99" # http://gist.github.com/372689
    ::RequireGistTestGist.should == 4

    lambda do
      require_gist "372689/df2b91fc88db48e3fa58a1cfffdbf214651a1bbf/require_gist_test_gist.rb", "bad SHA1" # http://gist.github.com/372689
    end.should raise_error(LoadError)
  end
end



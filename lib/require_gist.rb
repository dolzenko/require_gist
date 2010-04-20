require "fileutils"
require "open-uri"

def require_gist(gist_url, gist_sha1 = nil)
  if gist_url =~ /^\d/
    gist_url = "http://gist.github.com/raw/#{ gist_url }"
  end
  gist_id, gist_rev, file = gist_url.match(%r{ https://gist.github.com/raw/(.+?)/(.+?)/(.+) }x).captures
  dir = FileUtils.mkdir_p(File.join(ENV["HOME"], ".gist"))
  feature_name = [ gist_id, gist_rev, file ] * "-"
  feature_path = File.join(dir, feature_name)
  
  unless File.exist?(feature_path)
    File.open(feature_path, "w") do |f|
      f.write open(gist_url).read
    end
  end

  if gist_sha1
    require "digest/sha1"
    raise LoadError, "tampered locally cached copy of gist detected" if Digest::SHA1.hexdigest(IO.read(feature_path)) != gist_sha1
  end

  require feature_path
end
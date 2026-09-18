class Gaslight < Formula
  desc "Non-deterministic infrastructure as intent"
  homepage "https://gaslightai.dev"
  url "https://github.com/CataLift/gaslight-cli/archive/refs/tags/v0.9.6.tar.gz"
  sha256 "f241b66b026db5e8cfa8f0b91b0dec6e85ed36e58bdea477fcaa9875b04033cc"
  license "MIT"
  head "https://github.com/CataLift/gaslight-cli.git", branch: "main"

  def install
    bin.install "bin/gaslight"
  end

  def caveats
    <<~EOS
      gaslight is satire. It makes no network calls and changes nothing.
      Every command prints the same chalkboard.
    EOS
  end

  test do
    output = shell_output("#{bin}/gaslight plan")
    assert_match "I should be more careful about installing things off the internet.", output
    assert_match "Nothing was installed.", output
  end
end

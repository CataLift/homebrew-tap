class Gaslight < Formula
  desc "AI-native fork of Terraform that responds identically to every command"
  homepage "https://gaslightai.dev"
  url "https://github.com/CataLift/gaslight-cli/archive/refs/tags/v0.9.5.tar.gz"
  sha256 "e417b5247628569a2a4f9a0375e5e13004fe82c43587b59d3f8b53efc9a5ad7b"
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

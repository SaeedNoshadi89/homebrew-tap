class Agentmeter < Formula
  desc "Usage limits left for your coding agents, with a Rex popup"
  homepage "https://github.com/SaeedNoshadi89/agentmeter"
  url "https://github.com/SaeedNoshadi89/agentmeter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a64e8acac6c7e6f701d791a17d2815e44cee5d28bfd4e4964d201b11130de52c"
  license "MIT"

  def install
    bin.install "agentmeter"
  end

  def caveats
    <<~EOS
      To add the Rex popup (Shift+Cmd+U), run:
        agentmeter setup-rex
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentmeter --version")
  end
end

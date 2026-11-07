class Agentmeter < Formula
  desc "Usage limits left for your coding agents, with a Rex popup"
  homepage "https://github.com/SaeedNoshadi89/agentmeter"
  url "https://github.com/SaeedNoshadi89/agentmeter/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "521b45185c05665a3255234837b4375e7039f453d1e7826a594e202e2b1a640f"
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

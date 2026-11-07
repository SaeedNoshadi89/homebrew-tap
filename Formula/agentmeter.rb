class Agentmeter < Formula
  desc "Usage limits left for your coding agents, with a Rex popup"
  homepage "https://github.com/SaeedNoshadi89/agentmeter"
  url "https://github.com/SaeedNoshadi89/agentmeter/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1a0470e85bb5e5b776d6f13536fc1e07b1ea1ef3ef6018c1ae2bf0f646d2f878"
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

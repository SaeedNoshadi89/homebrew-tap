class Agentmeter < Formula
  desc "Usage limits left for your coding agents, with a Rex popup"
  homepage "https://github.com/SaeedNoshadi89/agentmeter"
  url "https://github.com/SaeedNoshadi89/agentmeter/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "98ab9b2ec724d921a3e84937e179e3be9a65469888a7e777891b2e590b180cad"
  license "MIT"

  def install
    bin.install "agentmeter"
  end

  def caveats
    <<~EOS
      To add the Rex popup and the Claude Code status line, run:
        agentmeter setup
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentmeter --version")
  end
end

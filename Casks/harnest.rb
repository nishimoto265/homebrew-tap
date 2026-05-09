cask "harnest" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "00b2b3c4661f3522f5783e03993af7e4c7948d3e2b0f18cc88cb802c26c3a9cd",
         intel: "e3890b558098ed77a057de32da6249ec7be6dd82880b3014cc8f6ed74616363f"

  url "https://github.com/nishimoto265/auto-improve/releases/download/v#{version}/harnest_darwin_#{arch}",
      verified: "github.com/nishimoto265/auto-improve/"
  name "HarNest"
  desc "Self-improving harness pipeline for AI coding agents"
  homepage "https://github.com/nishimoto265/auto-improve"

  binary "harnest_darwin_#{arch}", target: "harnest"

  caveats <<~EOS
    HarNest depends on git, gh, jq, yq, lsof, and configured Codex/Claude CLIs.
    Run `harnest preflight` before enabling scheduled runs.
  EOS
end

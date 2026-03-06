# typed: false
# frozen_string_literal: true

class Lazyreview < Formula
  desc "TUI tool for reviewing branch diffs file-by-file and hunk-by-hunk"
  homepage "https://github.com/nhost/lazyreview"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "lazyreview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyreview --version")
  end
end

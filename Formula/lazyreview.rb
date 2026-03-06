# typed: false
# frozen_string_literal: true

class Lazyreview < Formula
  desc "TUI tool for reviewing branch diffs file-by-file and hunk-by-hunk"
  homepage "https://github.com/nhost/lazyreview"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-darwin-arm64.tar.gz"
      sha256 "f05586d310e2990e6273226aed85dd1aa76449f626997f1bb1c752e592241266"
    end

    on_intel do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-darwin-amd64.tar.gz"
      sha256 "75e6500eb68e025f364017be707865ec9a68522f91c11f3806ccb322dadd7da7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-linux-arm64.tar.gz"
      sha256 "45e2e4f202b3547d56ad0158dd3e389fe58929b056a0eb88722ffa44c0dfc736"
    end

    on_intel do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-linux-amd64.tar.gz"
      sha256 "0ecfa95eeb75d4cb7ee7dc2be56e8f5f3653e8206e569523c0a391fcfabc7b2f"
    end
  end

  def install
    bin.install "lazyreview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyreview --version")
  end
end

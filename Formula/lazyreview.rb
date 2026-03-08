# typed: false
# frozen_string_literal: true

class Lazyreview < Formula
  desc "TUI tool for reviewing branch diffs file-by-file and hunk-by-hunk"
  homepage "https://github.com/nhost/lazyreview"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-darwin-arm64.tar.gz"
      sha256 "fd0b9d54d2a6668299d4023263d4cb47d1122b66f2fa486bd2af2fa0aa2f55d9"
    end

    on_intel do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-darwin-amd64.tar.gz"
      sha256 "4043a4a1ac6128ed61d04fa0607028b1f295e108f931884b2036e98d4285a70b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-linux-arm64.tar.gz"
      sha256 "bbab6f565442cfaa06aa1ad7f7e320518887f74d56766de32ee5f86ba982579d"
    end

    on_intel do
      url "https://github.com/nhost/lazyreview/releases/download/lazyreview@#{version}/lazyreview-#{version}-linux-amd64.tar.gz"
      sha256 "151e47dadfe13918b76ab1ac16e36d30fbde19832a364303fa5d88b73c16dfb0"
    end
  end

  def install
    bin.install "lazyreview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lazyreview --version")
  end
end

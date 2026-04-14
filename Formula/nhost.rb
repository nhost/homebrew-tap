# typed: false
# frozen_string_literal: true

class Nhost < Formula
  desc "Nhost CLI for local development, project management, and deployments"
  homepage "https://github.com/nhost/nhost"
  version "1.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-arm64.tar.gz"
      sha256 "e5eb228e7f036a8eb60ee62d7c152bc532aec4f5ab12bca235290cabc320f43f"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-amd64.tar.gz"
      sha256 "dd86a8fdfa62e75928c4d821d55cc74f5c3499b3a1d532a4359adf7d7af0f3ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-arm64.tar.gz"
      sha256 "0b80c92c790d26e3396d5311a024f45b308a02908349e44341e2d5dfadf75413"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-amd64.tar.gz"
      sha256 "c325f90e3ec32eeb7c1e4a2d4adc88a4de18b8d9059b5e6750a66d5fa357ac73"
    end
  end

  def install
    bin.install "cli" => "nhost"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nhost version")
  end
end

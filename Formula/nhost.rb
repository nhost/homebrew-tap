# typed: false
# frozen_string_literal: true

class Nhost < Formula
  desc "Nhost CLI for local development, project management, and deployments"
  homepage "https://github.com/nhost/nhost"
  version "1.51.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-arm64.tar.gz"
      sha256 "1aaf34efe150d548157a05b06b43d6c74cfc804e6d336b1ec4f07b42df1bd911"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-amd64.tar.gz"
      sha256 "76a0f085a2dfc4e682a1a8966bdde99f2e5c92258e5626167b77646b72f7b9d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-arm64.tar.gz"
      sha256 "38c06b69faae51c3c06b5973c3fd63204edb05d25df358e786c1b267987524c6"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-amd64.tar.gz"
      sha256 "c515625487e009b0ee5613d67dc9bde2e16b21b1fc2179cfc523bd5a9224e292"
    end
  end

  def install
    bin.install "cli" => "nhost"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nhost version")
  end
end

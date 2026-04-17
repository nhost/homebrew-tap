# typed: false
# frozen_string_literal: true

class Nhost < Formula
  desc "Nhost CLI for local development, project management, and deployments"
  homepage "https://github.com/nhost/nhost"
  version "1.43.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-arm64.tar.gz"
      sha256 "dc278b940a45e4273024b4a1fcd18e2bd7a11e4b1864bb15e3e69469487a513f"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-amd64.tar.gz"
      sha256 "64214be0971f5d53785be04b05e9a48a02bb7ee033724271bc03b44c91d7385d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-arm64.tar.gz"
      sha256 "b7f7f823db33a9262b04c8a912f8933d028a772da10eb17f4b6b058665ab8fea"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-amd64.tar.gz"
      sha256 "1e20dfa7a212f838737e9c794efb833cd421831b954ce29aee692f5400298ee6"
    end
  end

  def install
    bin.install "cli" => "nhost"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nhost version")
  end
end

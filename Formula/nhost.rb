# typed: false
# frozen_string_literal: true

class Nhost < Formula
  desc "Nhost CLI for local development, project management, and deployments"
  homepage "https://github.com/nhost/nhost"
  version "1.50.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-arm64.tar.gz"
      sha256 "706fe30f1ff38d773bbdd9cbab7e13cda45ea89e9a5bb7ad215c4d77fdb6774b"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-amd64.tar.gz"
      sha256 "a27e97a719dc20d26b922f3b7a539e800b3e358b281fa372466faa9f115e8f57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-arm64.tar.gz"
      sha256 "4d6a84f77f21a7d5d58bc32eb922106632902dbd9e7dc239192b7effcee1be60"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-amd64.tar.gz"
      sha256 "1fae65820717f4b1c0e750023a4ef59443a688e72f8b3d4d899d8b62224d3199"
    end
  end

  def install
    bin.install "cli" => "nhost"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nhost version")
  end
end

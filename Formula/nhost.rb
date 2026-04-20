# typed: false
# frozen_string_literal: true

class Nhost < Formula
  desc "Nhost CLI for local development, project management, and deployments"
  homepage "https://github.com/nhost/nhost"
  version "1.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-arm64.tar.gz"
      sha256 "ff60a2ab979030117ba632463c4e72c8f2b93ffc5f0139a66aa1792103f301d3"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-darwin-amd64.tar.gz"
      sha256 "35a3fe29f1e00b9b4379e75ba8e3596edb7e6eee34f834319e0da45689209060"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-arm64.tar.gz"
      sha256 "b7a285c8d7f0906e6f0b0026c3e25ee28142a83d15a2145d95aeb99a1c30613f"
    end

    on_intel do
      url "https://github.com/nhost/nhost/releases/download/cli@#{version}/cli-#{version}-linux-amd64.tar.gz"
      sha256 "b8d0034473d3c6e01970ed200bfffb790e88e971a4dc6d4785940ea356a2e462"
    end
  end

  def install
    bin.install "cli" => "nhost"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nhost version")
  end
end

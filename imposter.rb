# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.12.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.12.5/imposter_0.12.5_macOS_x86_64.tar.gz"
      sha256 "d8966f3d70349d96fa07d499fea92e2fb9bf74d5d5689ca588fbeb0b9351a31c"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.12.5/imposter_0.12.5_macOS_arm64.tar.gz"
      sha256 "c92a863caeeb6da748e6d8c57ed23fe139c846af80624acefa482afeb6583071"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.12.5/imposter_0.12.5_Linux_x86_64.tar.gz"
      sha256 "ad2f1d247bedea0014d03e9dacaaffa477dcaee2948194e0682f39eed69286f1"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.12.5/imposter_0.12.5_Linux_armv6.tar.gz"
      sha256 "6218ab01230d991943a6d2a76c67a2cc5f1e5e9522d8cf63150a1707b959e1ee"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.12.5/imposter_0.12.5_Linux_arm64.tar.gz"
      sha256 "0e0311c8a81be899bf2d2a4c7a36ea1a7e6d596c77756267fa969799b3ccd3e5"

      def install
        bin.install "imposter"
      end
    end
  end

  def caveats; <<~EOS
    Requires Docker to be installed.
  EOS
  end
end

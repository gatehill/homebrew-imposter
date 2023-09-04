# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.33.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.33.0/imposter_0.33.0_darwin_amd64.tar.gz"
      sha256 "40e357aa67e4c5f12cfd57ceec04c94b9f8b2c8d7b19917248f40100939e246e"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.33.0/imposter_0.33.0_darwin_arm64.tar.gz"
      sha256 "dd4c3532d4f87851f227c3c045d5c6791e0b60ad852624aad1edd55966a66771"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.33.0/imposter_0.33.0_linux_arm64.tar.gz"
      sha256 "4eb4659b9ae1b16ae33bf2c071ef739b1ca9469abe8d2908686871dd89420030"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.33.0/imposter_0.33.0_linux_armv6.tar.gz"
      sha256 "afe4e9fac14dd4752bda20013793dae98eef5ae070684f559c166f647b6f09da"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.33.0/imposter_0.33.0_linux_amd64.tar.gz"
      sha256 "de7599fd19b61132204707179b851cb212032e8ba607189f6d384a2173a34e84"

      def install
        bin.install "imposter"
      end
    end
  end

  def caveats
    <<~EOS
      Requires Docker to be installed.
    EOS
  end
end

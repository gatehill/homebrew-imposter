# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "0.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.30.0/imposter_0.30.0_macOS_arm64.tar.gz"
      sha256 "22f9153abb182528c97aa6dc7d1baf5f67ce35beb032e2014ebc7bbe46e65668"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.30.0/imposter_0.30.0_macOS_x86_64.tar.gz"
      sha256 "dcb318a91a92ed4106f755ab003a563fb6a5b4a1e8d370ca0c1475f18c5ad092"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.30.0/imposter_0.30.0_Linux_armv6.tar.gz"
      sha256 "928d3287d0dc86c6c65b436f7b04ae2b8d0d0eec4d01cf828fc09a0893950367"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.30.0/imposter_0.30.0_Linux_x86_64.tar.gz"
      sha256 "7ffbb453a803488f4ceaec09b0d2a77213d4b574a2ce1cedf45de84a234d265b"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gatehill/imposter-cli/releases/download/v0.30.0/imposter_0.30.0_Linux_arm64.tar.gz"
      sha256 "49f90fc2a9ddc1942029d8bc4e5ebb9c98fb0b6859163d6717dcaedea0d0e949"

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

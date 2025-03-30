# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, SOAP/WSDL web services, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v1.1.0/imposter-cli_darwin_amd64.tar.gz"
      sha256 "8da3246175b58ebe70a4b0bf43cfd321c2b66de44bbd7fa9497f37bb768a5f66"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v1.1.0/imposter-cli_darwin_arm64.tar.gz"
      sha256 "9095dc4d7e50530f3fcb66ebc5f078a8c210763ae82fc56d755062798d12f0c2"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.1.0/imposter-cli_linux_amd64.tar.gz"
        sha256 "8f977ed2afdbc9388f482b7b6bffa143e48b439676a7672c783f9ba706dfe1b0"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.1.0/imposter-cli_linux_arm.tar.gz"
        sha256 "7a6685757a424ff50359681f7da872042a6ade2c4a2e671b18cc8428e00b7d18"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.1.0/imposter-cli_linux_arm64.tar.gz"
        sha256 "232de5484d08a00d65b16d5b6c2b6b30f00b16f3650f005c2006ebb84fad9c32"

        def install
          bin.install "imposter"
        end
      end
    end
  end

  def caveats
    <<~EOS
      Requires Docker to be installed.
    EOS
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, SOAP/WSDL web services, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.5/imposter-cli_darwin_amd64.tar.gz"
      sha256 "fb45aefd527d2620f6765abddd8e9b779f449cb91e721c9db9727f41e646bfdb"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.5/imposter-cli_darwin_arm64.tar.gz"
      sha256 "29d02055d0097e0e35ef483871ae5c83cb5ee9abd5d9ee61d710ed9671b0bcd2"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.5/imposter-cli_linux_amd64.tar.gz"
        sha256 "e370873e261fad9633e389b124bc9c186a436d879ef6eb69b9e8510b31ce0dd5"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.5/imposter-cli_linux_arm.tar.gz"
        sha256 "d7cff25c58b20ae749d663d0cd82f5a8f893a4d504f3d2519f334545847b63b7"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.5/imposter-cli_linux_arm64.tar.gz"
        sha256 "4478dca25756bcc59aaab512b4b5b09b41296a36e5114e83d7723fc3f8fab135"

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

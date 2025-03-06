# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Imposter < Formula
  desc "Reliable, scriptable and extensible mock server for REST APIs, OpenAPI (and Swagger) specifications, SOAP/WSDL web services, Salesforce and HBase APIs."
  homepage "https://www.imposter.sh"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.4/imposter-cli_darwin_amd64.tar.gz"
      sha256 "e55a9e130cffdbd49b10538d79786426f261b81e925bb7d8546464eb2d233016"

      def install
        bin.install "imposter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.4/imposter-cli_darwin_arm64.tar.gz"
      sha256 "1b5cf40643bcf20c81ebe7f45d13c2f083d47aa1adedf7abb7fddd1e3249c622"

      def install
        bin.install "imposter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.4/imposter-cli_linux_amd64.tar.gz"
        sha256 "12ecdb103da2e97e692365e9dca73ef7aa2ff33ac84a059d50a554375b6f0650"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.4/imposter-cli_linux_arm.tar.gz"
        sha256 "51985aea35483dbf30e0eff7a24bfb7167a2a3b595f463549eb04121a4f87fe4"

        def install
          bin.install "imposter"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/imposter-project/imposter-cli/releases/download/v1.0.4/imposter-cli_linux_arm64.tar.gz"
        sha256 "f0420a7abca9188fd02345f83b88f239298bff682a882a0d2413c8030ecbd395"

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

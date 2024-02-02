# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "The CLI for Humanitec, humctl."
  homepage "https://developer.humanitec.com/platform-orchestrator/cli/"
  version "0.13.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/humanitec/cli/releases/download/v0.13.3/cli_0.13.3_darwin_amd64.tar.gz"
      sha256 "07edb85f873a800795b39c1462695200c612992a1b51065b4086ce54b7f07924"

      def install
        bin.install "humctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/humanitec/cli/releases/download/v0.13.3/cli_0.13.3_darwin_arm64.tar.gz"
      sha256 "fe14f7006dcd9c5811b270577ccee2bfe0ba0d16f5a3765cb454453f2eab8594"

      def install
        bin.install "humctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/humanitec/cli/releases/download/v0.13.3/cli_0.13.3_linux_amd64.tar.gz"
      sha256 "d5f3959c654d01fbc1e9cbb9cd2c289de01e1b0701652db52a125a122153acf6"

      def install
        bin.install "humctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/humanitec/cli/releases/download/v0.13.3/cli_0.13.3_linux_arm64.tar.gz"
      sha256 "1e0d33bf4ba9cdad0691f39e04d5b9ea96b3120b29a3eeeddda17c0a6de51b4a"

      def install
        bin.install "humctl"
      end
    end
  end
end

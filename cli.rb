# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "The CLI for Humanitec, humctl."
  homepage "https://developer.humanitec.com/platform-orchestrator/cli/"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/humanitec/cli/releases/download/v0.21.0/cli_0.21.0_darwin_amd64.tar.gz"
      sha256 "d538db391746e0247320bd7b9b3274284972a7f6e9cd441c3664706b064aad33"

      def install
        bin.install "humctl"
        generate_completions_from_executable(bin/"humctl", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/humanitec/cli/releases/download/v0.21.0/cli_0.21.0_darwin_arm64.tar.gz"
      sha256 "5e70e87bb846cd1d83f2122e672c529131a65af7da6afc8eb0b92a8b897f163c"

      def install
        bin.install "humctl"
        generate_completions_from_executable(bin/"humctl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/humanitec/cli/releases/download/v0.21.0/cli_0.21.0_linux_amd64.tar.gz"
      sha256 "c6520edec8a0ffb448c0162308709ad1eabb8d165f37d027101b70fb0e5b6477"

      def install
        bin.install "humctl"
        generate_completions_from_executable(bin/"humctl", "completion")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/humanitec/cli/releases/download/v0.21.0/cli_0.21.0_linux_arm64.tar.gz"
      sha256 "fa13831df050ff82d9d7a550fb070a97c745d3cb1b30a93229cc05f76e80d55c"

      def install
        bin.install "humctl"
        generate_completions_from_executable(bin/"humctl", "completion")
      end
    end
  end
end

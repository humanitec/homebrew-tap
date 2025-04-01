# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "The CLI for Humanitec, humctl."
  homepage "https://developer.humanitec.com/platform-orchestrator/cli/"
  version "0.39.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/humanitec/cli/releases/download/v0.39.1/cli_0.39.1_darwin_amd64.tar.gz"
      sha256 "d22d91e57779ce3187181fcff69ed396120a9774c7617394607535c5ef9aa182"

      def install
        bin.install "humctl"
        generate_completions_from_executable(bin/"humctl", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/humanitec/cli/releases/download/v0.39.1/cli_0.39.1_darwin_arm64.tar.gz"
      sha256 "82ca2eaa791061d51f1489314294345958bb2f417122a7f157d342b4b874eccd"

      def install
        bin.install "humctl"
        generate_completions_from_executable(bin/"humctl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/humanitec/cli/releases/download/v0.39.1/cli_0.39.1_linux_amd64.tar.gz"
        sha256 "234e70b6a19d6258fac22b9406887892a276c5b890b3ce034cf795009693e849"

        def install
          bin.install "humctl"
          generate_completions_from_executable(bin/"humctl", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/humanitec/cli/releases/download/v0.39.1/cli_0.39.1_linux_arm64.tar.gz"
        sha256 "2f136a985b4c032d1c9ea5f653206947946fdf63c9313f000d14ceda01ff461e"

        def install
          bin.install "humctl"
          generate_completions_from_executable(bin/"humctl", "completion")
        end
      end
    end
  end
end

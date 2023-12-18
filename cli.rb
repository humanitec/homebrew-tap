# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "The CLI for Humanitec, humctl."
  homepage "https://developer.humanitec.com/platform-orchestrator/cli/"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/humanitec/cli/releases/download/v0.12.0/cli_0.12.0_darwin_arm64.tar.gz"
      sha256 "7043ad67817f70fe2da912b9a6d0e07c5c93acd6e3de848c8015392b1ea5c474"

      def install
        bin.install "humctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/humanitec/cli/releases/download/v0.12.0/cli_0.12.0_darwin_amd64.tar.gz"
      sha256 "efbd9ac5c4d9d1da0aa5190c21e2f39e85d10d5d8d56f5170e53250f124b631d"

      def install
        bin.install "humctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/humanitec/cli/releases/download/v0.12.0/cli_0.12.0_linux_arm64.tar.gz"
      sha256 "c32db3fbb18b82682281740098c7c9c148e5404f98b4125e644b1e0e162c93f6"

      def install
        bin.install "humctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/humanitec/cli/releases/download/v0.12.0/cli_0.12.0_linux_amd64.tar.gz"
      sha256 "a7ecd6642803db50090fde453cdeb45e50dcc6dc3f22d87d35a323f5ad6e0751"

      def install
        bin.install "humctl"
      end
    end
  end
end

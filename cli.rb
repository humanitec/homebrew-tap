# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "The CLI for Humanitec, humctl."
  homepage "https://developer.humanitec.com/platform-orchestrator/cli/"
  version "0.30.2"

  on_macos do
    on_intel do
      url "https://github.com/humanitec/cli/releases/download/v0.30.2/cli_0.30.2_darwin_amd64.tar.gz"
      sha256 "db1833d0479b73181bb4ffed5e38c026d37ee1e262d232678b56c7271249e0f8"

      def install
        bin.install "humctl"
        generate_completions_from_executable(bin/"humctl", "completion")
      end
    end
    on_arm do
      url "https://github.com/humanitec/cli/releases/download/v0.30.2/cli_0.30.2_darwin_arm64.tar.gz"
      sha256 "e3036e8fea1121668aa96c7e3adcfc7a385b0e11a78475fbba22e9cd82acc9c2"

      def install
        bin.install "humctl"
        generate_completions_from_executable(bin/"humctl", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/humanitec/cli/releases/download/v0.30.2/cli_0.30.2_linux_amd64.tar.gz"
        sha256 "827e56b7a731fed18d6c754198c9dee3fa03e5cea734afb67fabd8bbe39a577c"

        def install
          bin.install "humctl"
          generate_completions_from_executable(bin/"humctl", "completion")
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/humanitec/cli/releases/download/v0.30.2/cli_0.30.2_linux_arm64.tar.gz"
        sha256 "a291be760154c4f00996079f7d9fa41a9e19b580df566ef74774c1710a11730d"

        def install
          bin.install "humctl"
          generate_completions_from_executable(bin/"humctl", "completion")
        end
      end
    end
  end
end

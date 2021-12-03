# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "2.0.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.17/agent_Darwin_arm64.tar.gz"
      sha256 "b264e722f635cf2d77d78b98e0aebb03c77c81ad36e2f40a6cbf48fea9e04a94"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.17/agent_Darwin_x86_64.tar.gz"
      sha256 "0e713ecc9ca78b7ff90426621166f6e364b1fb9c3fc8eb9776fd489073a2aea7"

      def install
        bin.install "agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.17/agent_Linux_armv6.tar.gz"
      sha256 "93aef48d7f006ec652e1db9fb7230ebde6b6b061a7fda2e1907beb8f6f7fc7a9"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.17/agent_Linux_x86_64.tar.gz"
      sha256 "2776812ed34c5694f959e289c09eb9bc3d36fe20d91fca23fd8e26b1e9dfe674"

      def install
        bin.install "agent"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/semaphoreci/agent/releases/download/v2.0.17/agent_Linux_arm64.tar.gz"
      sha256 "44d7c39ffcc166ef5ca57f32a54bf8a80a0c6bd7b7e5eeb786bd53b24e0f4781"

      def install
        bin.install "agent"
      end
    end
  end

  test do
    system "#{bin}/agent version"
  end
end

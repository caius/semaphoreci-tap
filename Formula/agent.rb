# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "0.10.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/semaphoreci/agent/releases/download/v0.10.1/agent_Darwin_x86_64.tar.gz"
    sha256 "93a6998a9fc4683acc19aa11a693f14c071701a99387cb5ea34433ba5640aa27"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v0.10.1/agent_Linux_x86_64.tar.gz"
      sha256 "1c7ca2a468a33dddd8f96471ace4e22d4f14fe383520fb8b87f6ba2c7e3488c5"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end

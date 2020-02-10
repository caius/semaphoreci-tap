# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "1.0.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/semaphoreci/agent/releases/download/v1.0.10/agent_Darwin_x86_64.tar.gz"
    sha256 "82008e25f53113282f449afbaefb674f24b7b4bcc778c751eea0f6fcbe8e75f9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v1.0.10/agent_Linux_x86_64.tar.gz"
      sha256 "5243f2e4663a23225d3804abe9a08913043d793ddabf97588d838627cf1af31f"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end

# This file was generated by GoReleaser. DO NOT EDIT.
class Agent < Formula
  desc "Semaphore 2.0 agent."
  homepage "https://semaphoreci.com"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/semaphoreci/agent/releases/download/v1.0.0/agent_Darwin_x86_64.tar.gz"
    sha256 "48817c012d82a41460cbbef79b301d1dabdcd302bfad153bee9d15c72d517895"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/semaphoreci/agent/releases/download/v1.0.0/agent_Linux_x86_64.tar.gz"
      sha256 "827c2958f33e68d4612af7a4d24c44fb1e4b0b2ed8e4c08dee73aaa756c48d02"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    system "#{bin}/agent version"
  end
end

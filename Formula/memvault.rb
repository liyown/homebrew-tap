class Memvault < Formula
  desc "Local session memory and conversation archive"
  homepage "https://github.com/liyown/memvault"
  version "0.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/liyown/memvault/releases/download/v0.1.0/memvault_0.1.0_darwin_arm64.tar.gz"
    sha256 "8338784abdc5b4a38d587b68f088c4c37c2979d37798b266f772485d8e11546b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/liyown/memvault/releases/download/v0.1.0/memvault_0.1.0_darwin_amd64.tar.gz"
    sha256 "455d9c410fba02867fec98e0d11ecb3ccdd76c5196af76660e4533a390562fce"
  elsif OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/liyown/memvault/releases/download/v0.1.0/memvault_0.1.0_linux_arm64.tar.gz"
    sha256 "fa7d6d1a9eecaaeede666c08e1ce000f4ee885a5ef32406c5ad623c76ebe2874"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/liyown/memvault/releases/download/v0.1.0/memvault_0.1.0_linux_amd64.tar.gz"
    sha256 "a7ae2ffad05fea46e884034e114a4c4bd3bfb7b713291bcb677481fa864fef0f"
  end

  def install
    bin.install "memvault"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/memvault version").strip
  end
end

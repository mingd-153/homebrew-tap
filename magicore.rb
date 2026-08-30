class Magicore < Formula
  desc "Universal Package Manager with Zero-Trust Supply Chain"
  homepage "https://github.com/mingd-153/MagiCore"
  version "1.0.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mingd-153/MagiCore/releases/download/v1.0.0-rc.1/mgc-aarch64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER_ARM64_MACOS_SHA256"
  elsif OS.mac?
    url "https://github.com/mingd-153/MagiCore/releases/download/v1.0.0-rc.1/mgc-x86_64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER_X86_64_MACOS_SHA256"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/mingd-153/MagiCore/releases/download/v1.0.0-rc.1/mgc-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER_ARM64_LINUX_SHA256"
  else
    url "https://github.com/mingd-153/MagiCore/releases/download/v1.0.0-rc.1/mgc-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER_X86_64_LINUX_SHA256"
  end

  def install
    bin.install "mgc"
  end

  test do
    system "#{bin}/mgc", "--version"
  end
end

class Magicore < Formula
  desc "Universal Package Manager with Zero-Trust Supply Chain"
  homepage "https://github.com/mingd-153/MagiCore"
  version "1.0.0-rc.1"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mingd-153/MagiCore/releases/download/v1.0.0-rc.1/magicore-macOS-ARM64.tar.gz"
    sha256 "9b24ae6eb0379c00e64749b5584d6adf203217f1d045861fdea878d129921e4e"
  elsif OS.linux?
    url "https://github.com/mingd-153/MagiCore/releases/download/v1.0.0-rc.1/magicore-Linux-X64.tar.gz"
    sha256 "f3cdd2e4351a31105391cb438d27a5f18827f73313d945c0dbecc63df567704a"
  else
    odie "Unsupported platform. Only macOS ARM64 and Linux x86_64 available in RC.1"
  end

  def install
    bin.install "mgc"
  end

  test do
    system "#{bin}/mgc", "--version"
  end
end

class Magicore < Formula
  desc "Universal Package Manager with Zero-Trust Supply Chain"
  homepage "https://github.com/mingd-153/MagiCore"
  version "1.0.0-rc.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/mingd-153/MagiCore/releases/download/v1.0.0-rc.2/magicore-macOS-ARM64.tar.gz"
    sha256 "8382022aec645f9a0355cdec411d1a05741ee4f3bddb56a54ee832fa8b9e45f3"
  elsif OS.linux?
    url "https://github.com/mingd-153/MagiCore/releases/download/v1.0.0-rc.2/magicore-Linux-X64.tar.gz"
    sha256 "aefe16567841b2f0e45eb91164e1e7e7f3101707b325d47091eceb9c0079bbc8"
  else
    odie "Unsupported platform. Only macOS ARM64 and Linux x86_64 available in RC.2"
  end

  def install
    bin.install "mgc"
  end

  test do
    system "#{bin}/mgc", "--version"
  end
end

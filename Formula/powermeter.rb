class Powermeter < Formula
  desc "Measure power usage per process on macOS"
  homepage "https://github.com/cheatsnake/powermeter"
  url "https://github.com/cheatsnake/powermeter/releases/download/2026-10-22-1/powermeter_2026-10-22-1_darwin_universal.tar.gz"
  version "2026.10.22.1"
  sha256 "fa1ce48ca86f8020a7a83f940b250a81dee3118fd8b511e2bc6f15ab59dc7ea7"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "powermeter"
  end

  def caveats
    <<~EOS
      Powermeter runs the macOS powermetrics utility.
      It asks for administrator privileges for each measurement.
    EOS
  end

  test do
    assert_match "2026-10-22-1", shell_output("#{bin}/powermeter --version")
  end
end

class Powermeter < Formula
  desc "Measure power usage per process on macOS"
  homepage "https://github.com/cheatsnake/powermeter"
  url "https://github.com/cheatsnake/powermeter/releases/download/2026-10-22-1/powermeter_2026-10-22-1_darwin_universal.tar.gz"
  version "2026.10.22.1"
  sha256 "de97a242af253ba050a79f7da1f7b407d10f101e1a191dc9bdefad37b6fa8a36"
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

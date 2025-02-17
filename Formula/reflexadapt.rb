class Reflexadapt < Formula
  desc "Firmware update and configuration package for Reflex Adapt hardaware"
  homepage "https://github.com/misteraddons/Reflex-Adapt"
  url "https://github.com/misteraddons/Reflex-Adapt/archive/refs/tags/v2.00.tar.gz"
  sha256 "1e093a511a120433f89306d85e2f6ff091d36cb47916b2e2826eeb5f193c8321"
  license "GPL-3.0-only"
  head "https://github.com/misteraddons/Reflex-Adapt.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    cd "reflex_updater" do
      system "cargo", "install", *std_cargo_args
    end
  end
end

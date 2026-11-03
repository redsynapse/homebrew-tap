class Civitfit < Formula
  desc "Right-size Civitai image models to your hardware"
  homepage "https://github.com/redsynapse/civitfit"
  license "MIT"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/redsynapse/civitfit/releases/download/v0.2.1/civitfit-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "4fdb4636f1d39dbc315e8a8b200066ec1a8fa5e05658459cae21e017246da4da"
    end
    on_intel do
      url "https://github.com/redsynapse/civitfit/releases/download/v0.2.1/civitfit-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "35b49fc9b0d68e6918bbec920f01226df886d10793a345620772aab2789f7d88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/redsynapse/civitfit/releases/download/v0.2.1/civitfit-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bee9a8d5758632def5d35401931a38f95e9e8e7f698314e696ec4927e14af05e"
    end
    on_intel do
      url "https://github.com/redsynapse/civitfit/releases/download/v0.2.1/civitfit-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5dc9d74a93c13b50ed9b6d4b4c14c88b08818b58f9f82b9fdae3ebe9392740e5"
    end
  end

  def install
    bin.install "civitfit"
  end

  test do
    assert_match "civitfit", shell_output("#{bin}/civitfit --version")
  end
end

class Civitfit < Formula
  desc "Right-size Civitai image models to your hardware"
  homepage "https://github.com/redsynapse/civitfit"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/redsynapse/civitfit/releases/download/v0.2.0/civitfit-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0ea114fa39f1370bd378411af9bd31f6526a10004af12adf58662985a9eb4025"
    end
    on_intel do
      url "https://github.com/redsynapse/civitfit/releases/download/v0.2.0/civitfit-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "acdf50386fbd2cf8d1408d6391a00aa62be54b34ea7b4b650c1164978901b5ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/redsynapse/civitfit/releases/download/v0.2.0/civitfit-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "421cdf1aad3b7019954a0476e1f860af0d06905c8a2c6b23a63957e5e81eced4"
    end
    on_intel do
      url "https://github.com/redsynapse/civitfit/releases/download/v0.2.0/civitfit-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "116b0860e3bd80ad53aa2fde8ff375c2eb4051705e216ebf127baeb257dfbb6c"
    end
  end

  livecheck do
    url "https://github.com/redsynapse/civitfit"
    strategy :github_latest
  end

  def install
    bin.install "civitfit"
  end

  test do
    assert_match "civitfit", shell_output("#{bin}/civitfit --version")
  end
end

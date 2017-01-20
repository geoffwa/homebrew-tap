class BoshCli < Formula
  desc "The new golang BOSH cli (alpha)"
  version "0.0.147"
  url "https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-#{version}-darwin-amd64"
  sha256 "60eb9269ac02ae431264887be974a4818deabb9932f1fc14d7a9841045c90da1"

  depends_on :arch => :x86_64

  def install
    bin.install "bosh-cli-#{version}-darwin-amd64" => "gosh"
  end

  test do
    system "#{bin}/gosh --help"
  end
end

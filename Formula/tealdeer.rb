class Tealdeer < Formula
  desc "Very fast implementation of tldr in Rust"
  homepage "https://github.com/dbrgn/tealdeer"
  url "https://github.com/dbrgn/tealdeer/archive/v1.6.0.tar.gz"
  sha256 "7e957b8f440264524822d855af856a634d48a8150a11089bcf8252e42a9ec5e4"
  license any_of: ["Apache-2.0", "MIT"]

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "0d1d7ba657937c479ae47d27942e66d1ff15cc3f957596d223e28b26361d9021"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "7d64f393398aea8171ec136a96baeef735adf458c2b53a41410487f94089da0d"
    sha256 cellar: :any_skip_relocation, monterey:       "0a7f00acd485f3cfd6a99664b39fcf82aee38d8f2ffda8fc48b77f060695e743"
    sha256 cellar: :any_skip_relocation, big_sur:        "c97e8782cafb0151755c361cf99854a493bda6873fab6fffe46c6ed0c9931593"
    sha256 cellar: :any_skip_relocation, catalina:       "9abfdc915c51c97cde029a6029adb6c8bcf5d848da738be785316f998449d5a6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "130dc8bc4bc2af2d56e9c06766ba71689990b941123448d4de2b84bba8d96fbd"
  end

  depends_on "rust" => :build

  conflicts_with "tldr", because: "both install `tldr` binaries"

  def install
    system "cargo", "install", *std_cargo_args
    bash_completion.install "completion/bash_tealdeer" => "tldr"
    zsh_completion.install "completion/zsh_tealdeer" => "_tldr"
    fish_completion.install "completion/fish_tealdeer" => "tldr.fish"
  end

  test do
    assert_match "brew", shell_output("#{bin}/tldr -u && #{bin}/tldr brew")
  end
end

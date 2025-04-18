class ClearlooksPhenix < Formula
  desc "GTK+3 port of the Clearlooks Theme"
  homepage "https://github.com/jpfleury/clearlooks-phenix"
  url "https://github.com/jpfleury/clearlooks-phenix/archive/refs/tags/7.0.1.tar.gz"
  sha256 "2a9b21400f9960422e31dc4dabb4f320a16b76776a9574f0986bb00e97d357f4"
  license "GPL-3.0-or-later"
  revision 1
  head "https://github.com/jpfleury/clearlooks-phenix.git", branch: "master"

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, all: "b78942e05a0bc1e821d1d2177a877ec93672ea0d7d2e300053388ab486f0bfe0"
  end

  depends_on "gtk+3"

  def install
    (share/"themes/Clearlooks-Phenix").install %w[gtk-2.0 gtk-3.0 index.theme]
  end

  def post_install
    system "#{Formula["gtk+3"].opt_bin}/gtk3-update-icon-cache", "-f",
           HOMEBREW_PREFIX/"share/themes/Clearlooks-Phenix"
  end

  test do
    assert_path_exists testpath/"#{share}/themes/Clearlooks-Phenix/index.theme"
  end
end

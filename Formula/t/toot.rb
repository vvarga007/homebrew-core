class Toot < Formula
  include Language::Python::Virtualenv

  desc "Mastodon CLI & TUI"
  homepage "https://toot.bezdomni.net/"
  url "https://files.pythonhosted.org/packages/a6/4c/49802eddecdad04fcf6434bee87814a8e1ac882abeedc1d4858787d7190f/toot-0.42.0.tar.gz"
  sha256 "6f6c128f7111ff945de6f67386083d1426d086beda4f40b410b8f646409183ef"
  license "GPL-3.0-only"
  revision 1
  head "https://github.com/ihabunek/toot.git", branch: "master"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "8696f35ec68d2c3075792093e0a67b2beba43dd228ffc5ec573ed91b384ae267"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "8696f35ec68d2c3075792093e0a67b2beba43dd228ffc5ec573ed91b384ae267"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "8696f35ec68d2c3075792093e0a67b2beba43dd228ffc5ec573ed91b384ae267"
    sha256 cellar: :any_skip_relocation, sonoma:         "8696f35ec68d2c3075792093e0a67b2beba43dd228ffc5ec573ed91b384ae267"
    sha256 cellar: :any_skip_relocation, ventura:        "8696f35ec68d2c3075792093e0a67b2beba43dd228ffc5ec573ed91b384ae267"
    sha256 cellar: :any_skip_relocation, monterey:       "8696f35ec68d2c3075792093e0a67b2beba43dd228ffc5ec573ed91b384ae267"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "072db9c92472a6f72d0f234d72138b7fe7f2a4cce864a8f4941439762869f683"
  end

  depends_on "certifi"
  depends_on "python@3.12"

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/b3/ca/824b1195773ce6166d388573fc106ce56d4a805bd7427b624e063596ec58/beautifulsoup4-4.12.3.tar.gz"
    sha256 "74e3d1928edc070d21748185c46e3fb33490f22f52a3addee9aee0f4f7781051"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/21/ed/f86a79a07470cb07819390452f178b3bef1d375f2ec021ecfc709fc7cf07/idna-3.7.tar.gz"
    sha256 "028ff3aadf0609c1fd278d8ea3089299412a7a8b9bd005dd08b9f8285bcb5cfc"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
    sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/ce/21/952a240de1c196c7e3fbcd4e559681f0419b1280c617db21157a0390717b/soupsieve-2.5.tar.gz"
    sha256 "5663d5a7b3bfaeee0bc4372e7fc48f9cff4940b3eec54a6451cc5299f1097690"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/7d/49/4c0764898ee67618996148bdba4534a422c5e698b4dbf4001f7c6f930797/tomlkit-0.12.4.tar.gz"
    sha256 "7ca1cfc12232806517a8515047ba66a19369e71edf2439d0f5824f91032b6cc3"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/f6/f3/b827b3ab53b4e3d8513914586dcca61c355fa2ce8252dea4da56e67bf8f2/typing_extensions-4.11.0.tar.gz"
    sha256 "83f085bd5ca59c80295fc2a82ab5dac679cbe02b9f33f7d83af68e241bea51b0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7a/50/7fd50a27caa0652cd4caf224aa87741ea41d3265ad13f010886167cfcc79/urllib3-2.2.1.tar.gz"
    sha256 "d0570876c61ab9e520d776c38acbbb5b05a776d3f9ff98a5c8fd5162a444cf19"
  end

  resource "urwid" do
    url "https://files.pythonhosted.org/packages/8e/74/8c2082f2b07a72ff5d2438447c13a70f0cbede73584e0a262c166a30785c/urwid-2.6.10.tar.gz"
    sha256 "ae33355c414c13214e541d3634f3c8a0bfb373914e62ffbcf2fa863527706321"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/toot --version")
    assert_equal "You are not logged in to any accounts", shell_output("#{bin}/toot auth").chomp
  end
end

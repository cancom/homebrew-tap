require "digest"

class TerraformDevelopment < Formula
  desc "Install Terraform development requirements"
  homepage "https://terraform.cancom.io/"
  url 'file://'+File.expand_path(__FILE__)
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  license "BSD-2-Clause"
  version "1"
  revision 0

  depends_on "bash"
  depends_on "coreutils"
  depends_on "git"
  depends_on "pre-commit"
  depends_on "tflint"
  depends_on "tfsec"

  depends_on "warrensbox/tap/tfswitch"

  keg_only "it's used to install development guideline requirements only"

  def install
    bin.install_symlink libexec/"terraform-development"
  end
end

class TomlMerge < Formula
  desc "Merge TOML files"
  homepage "https://github.com/mrnerdhair/toml-merge"
  head "https://github.com/mrnerdhair/toml-merge.git", branch: "master"

  depends_on "rust" => :build

  def install

    system "cargo", "build", "--release"
    bin.install "target/release/toml-merge"

  end

end

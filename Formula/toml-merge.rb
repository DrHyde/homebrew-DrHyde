class TomlMerge < Formula
  desc "Merge TOML files"
  homepage "https://github.com/mrnerdhair/toml-merge"
  head "https://github.com/mrnerdhair/toml-merge.git", branch: "master"

  def install

    system "cargo", "build", "--release"
    bin.install "target/release/toml-merge"

  end

end

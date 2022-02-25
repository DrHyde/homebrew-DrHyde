class TomlMerge < Formula
  desc "Merge TOML files"
  homepage "https://github.com/mrnerdhair/toml-merge"
  head "https://github.com/mrnerdhair/toml-merge.git", revision: "c44eee7c7fa52e98b34c20c88d19979adcafcf1b"

  depends_on "rust" => :build

  def install

    system "cargo", "build", "--release"
    bin.install "target/release/toml-merge"

  end

end

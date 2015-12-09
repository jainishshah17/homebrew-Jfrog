class ArtifactoryCliGo < Formula
  desc "Artifactory CLI provides a command line interface for uploading and downloading artifacts to and from Artifactory."
  homepage "https://github.com/JFrogDev/artifactory-cli-go"
  url "https://bintray.com/artifact/download/jfrog/artifactory-cli-go/1.2.0/artifactory-cli-mac-386/art"
  version "1.2.0"
  sha256 "79f3084291a4d54cfbf72dc1bbd16e14097077aa52897ed9b4e6fcf448758776"

  # depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    #install artifactory-cli in
    bin.install "art"

    # system "cmake", ".", *std_cmake_args
    bin.install_symlink libexec/"bin/art"
  end

  test do
    system bin/"art", "--version"
  end
end

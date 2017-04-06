# set the CRAN mirror to China
options(repos=structure(c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN")))

pkgTest <- function(x)
{
    if (!require(x, character.only = TRUE))
    {
        install.packages(x, dep=TRUE)
        if(!require(x, character.only = TRUE)) stop("Package not found")
    }
}

packages <- read.table("./package/r_packages_list.txt")

for (pkg in packages$V1) {
    pkgTest(pkg)
}

# Checkout to GRDBCipher submodule
git submodule update --init SQLCipher/src
git rm --cached -r SQLCipher/src
git config -f .gitmodules --remove-section submodule.SQLCipher/src
rm -rf SQLCipher/src/.git
git add SQLCipher/src

# Remove unwanted targets - we need only GRDBCipher.xcodeproj
git rm -r GRDBCustom.xcodeproj
git rm -r GRDB.xcodeproj

# TODO release new branch manually
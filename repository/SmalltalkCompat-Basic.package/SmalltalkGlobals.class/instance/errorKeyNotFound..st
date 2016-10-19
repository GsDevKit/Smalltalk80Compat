private
errorKeyNotFound: aKey

"No Association or key/value pair with the given key, aKey was found."

^ self _error: #rtErrKeyNotFound args: { aKey }

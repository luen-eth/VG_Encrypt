print("Enter the original text:")
local originalText = io.read("*l")
originalText = toUpperCase(originalText)

print("Enter the key:")
local key = io.read("*l")
key = toUpperCase(key)

local encryptedText = vgEncrypt(originalText, key)
print("Encrypted text: " .. encryptedText)

local decryptedText = vgDecrypt(encryptedText, key)
print("Decrypted text: " .. decryptedText)

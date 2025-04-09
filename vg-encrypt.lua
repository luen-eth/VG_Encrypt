
function toUpperCase(text)
  return string.upper(text)
end

function vgEncrypt(text, key)
  local encryptedText = ""
  local textLength = string.len(text)
  local keyLength = string.len(key)

  for i = 1, textLength do
    local textCharacter = string.sub(text, i, i)
    local keyCharacter = string.sub(key, (i-1) % keyLength + 1, (i-1) % keyLength + 1)

    local textAscii = string.byte(textCharacter)
    local keyAscii = string.byte(keyCharacter)

    local encryptedAscii = (textAscii + keyAscii - 2 * 65) % 26 + 65 
    local encryptedCharacter = string.char(encryptedAscii)

    encryptedText = encryptedText .. encryptedCharacter
  end

  return encryptedText
end

function vgDecrypt(encryptedText, key)
  local decryptedText = ""
  local encryptedTextLength = string.len(encryptedText)
  local keyLength = string.len(key)

  for i = 1, encryptedTextLength do
    local encryptedCharacter = string.sub(encryptedText, i, i)
    local keyCharacter = string.sub(key, (i-1) % keyLength + 1, (i-1) % keyLength + 1)

    local encryptedAscii = string.byte(encryptedCharacter)
    local keyAscii = string.byte(keyCharacter)

    local decryptedAscii = (encryptedAscii - keyAscii + 26) % 26 + 65 
    local decryptedCharacter = string.char(decryptedAscii)

    decryptedText = decryptedText .. decryptedCharacter
  end

  return decryptedText
end


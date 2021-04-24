{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.KeyUsageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeyUsageType
  ( KeyUsageType
      ( ..,
        EncryptDecrypt,
        SignVerify
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data KeyUsageType = KeyUsageType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EncryptDecrypt :: KeyUsageType
pattern EncryptDecrypt = KeyUsageType' "ENCRYPT_DECRYPT"

pattern SignVerify :: KeyUsageType
pattern SignVerify = KeyUsageType' "SIGN_VERIFY"

{-# COMPLETE
  EncryptDecrypt,
  SignVerify,
  KeyUsageType'
  #-}

instance FromText KeyUsageType where
  parser = (KeyUsageType' . mk) <$> takeText

instance ToText KeyUsageType where
  toText (KeyUsageType' ci) = original ci

instance Hashable KeyUsageType

instance NFData KeyUsageType

instance ToByteString KeyUsageType

instance ToQuery KeyUsageType

instance ToHeader KeyUsageType

instance ToJSON KeyUsageType where
  toJSON = toJSONText

instance FromJSON KeyUsageType where
  parseJSON = parseJSONText "KeyUsageType"

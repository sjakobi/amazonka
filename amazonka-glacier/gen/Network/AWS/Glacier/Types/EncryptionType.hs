{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.EncryptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.EncryptionType
  ( EncryptionType
      ( ..,
        AES256,
        AWSKMS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EncryptionType = EncryptionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AES256 :: EncryptionType
pattern AES256 = EncryptionType' "AES256"

pattern AWSKMS :: EncryptionType
pattern AWSKMS = EncryptionType' "aws:kms"

{-# COMPLETE
  AES256,
  AWSKMS,
  EncryptionType'
  #-}

instance FromText EncryptionType where
  parser = (EncryptionType' . mk) <$> takeText

instance ToText EncryptionType where
  toText (EncryptionType' ci) = original ci

instance Hashable EncryptionType

instance NFData EncryptionType

instance ToByteString EncryptionType

instance ToQuery EncryptionType

instance ToHeader EncryptionType

instance ToJSON EncryptionType where
  toJSON = toJSONText

instance FromJSON EncryptionType where
  parseJSON = parseJSONText "EncryptionType"

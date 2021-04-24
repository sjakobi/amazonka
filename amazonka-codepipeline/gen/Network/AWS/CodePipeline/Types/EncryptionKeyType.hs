{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.EncryptionKeyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.EncryptionKeyType
  ( EncryptionKeyType
      ( ..,
        KMS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EncryptionKeyType = EncryptionKeyType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern KMS :: EncryptionKeyType
pattern KMS = EncryptionKeyType' "KMS"

{-# COMPLETE
  KMS,
  EncryptionKeyType'
  #-}

instance FromText EncryptionKeyType where
  parser = (EncryptionKeyType' . mk) <$> takeText

instance ToText EncryptionKeyType where
  toText (EncryptionKeyType' ci) = original ci

instance Hashable EncryptionKeyType

instance NFData EncryptionKeyType

instance ToByteString EncryptionKeyType

instance ToQuery EncryptionKeyType

instance ToHeader EncryptionKeyType

instance ToJSON EncryptionKeyType where
  toJSON = toJSONText

instance FromJSON EncryptionKeyType where
  parseJSON = parseJSONText "EncryptionKeyType"

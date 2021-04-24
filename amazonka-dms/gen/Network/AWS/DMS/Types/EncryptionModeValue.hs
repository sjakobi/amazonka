{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.EncryptionModeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.EncryptionModeValue
  ( EncryptionModeValue
      ( ..,
        SseKMS,
        SseS3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EncryptionModeValue
  = EncryptionModeValue'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SseKMS :: EncryptionModeValue
pattern SseKMS = EncryptionModeValue' "sse-kms"

pattern SseS3 :: EncryptionModeValue
pattern SseS3 = EncryptionModeValue' "sse-s3"

{-# COMPLETE
  SseKMS,
  SseS3,
  EncryptionModeValue'
  #-}

instance FromText EncryptionModeValue where
  parser = (EncryptionModeValue' . mk) <$> takeText

instance ToText EncryptionModeValue where
  toText (EncryptionModeValue' ci) = original ci

instance Hashable EncryptionModeValue

instance NFData EncryptionModeValue

instance ToByteString EncryptionModeValue

instance ToQuery EncryptionModeValue

instance ToHeader EncryptionModeValue

instance ToJSON EncryptionModeValue where
  toJSON = toJSONText

instance FromJSON EncryptionModeValue where
  parseJSON = parseJSONText "EncryptionModeValue"

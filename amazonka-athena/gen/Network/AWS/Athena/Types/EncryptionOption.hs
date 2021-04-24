{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.EncryptionOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.EncryptionOption
  ( EncryptionOption
      ( ..,
        CseKMS,
        SseKMS,
        SseS3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EncryptionOption = EncryptionOption' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CseKMS :: EncryptionOption
pattern CseKMS = EncryptionOption' "CSE_KMS"

pattern SseKMS :: EncryptionOption
pattern SseKMS = EncryptionOption' "SSE_KMS"

pattern SseS3 :: EncryptionOption
pattern SseS3 = EncryptionOption' "SSE_S3"

{-# COMPLETE
  CseKMS,
  SseKMS,
  SseS3,
  EncryptionOption'
  #-}

instance FromText EncryptionOption where
  parser = (EncryptionOption' . mk) <$> takeText

instance ToText EncryptionOption where
  toText (EncryptionOption' ci) = original ci

instance Hashable EncryptionOption

instance NFData EncryptionOption

instance ToByteString EncryptionOption

instance ToQuery EncryptionOption

instance ToHeader EncryptionOption

instance ToJSON EncryptionOption where
  toJSON = toJSONText

instance FromJSON EncryptionOption where
  parseJSON = parseJSONText "EncryptionOption"

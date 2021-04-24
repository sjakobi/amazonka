{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.MLUserDataEncryptionModeString
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.MLUserDataEncryptionModeString
  ( MLUserDataEncryptionModeString
      ( ..,
        Disabled,
        SseKMS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MLUserDataEncryptionModeString
  = MLUserDataEncryptionModeString'
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

pattern Disabled :: MLUserDataEncryptionModeString
pattern Disabled = MLUserDataEncryptionModeString' "DISABLED"

pattern SseKMS :: MLUserDataEncryptionModeString
pattern SseKMS = MLUserDataEncryptionModeString' "SSE-KMS"

{-# COMPLETE
  Disabled,
  SseKMS,
  MLUserDataEncryptionModeString'
  #-}

instance FromText MLUserDataEncryptionModeString where
  parser = (MLUserDataEncryptionModeString' . mk) <$> takeText

instance ToText MLUserDataEncryptionModeString where
  toText (MLUserDataEncryptionModeString' ci) = original ci

instance Hashable MLUserDataEncryptionModeString

instance NFData MLUserDataEncryptionModeString

instance ToByteString MLUserDataEncryptionModeString

instance ToQuery MLUserDataEncryptionModeString

instance ToHeader MLUserDataEncryptionModeString

instance ToJSON MLUserDataEncryptionModeString where
  toJSON = toJSONText

instance FromJSON MLUserDataEncryptionModeString where
  parseJSON = parseJSONText "MLUserDataEncryptionModeString"

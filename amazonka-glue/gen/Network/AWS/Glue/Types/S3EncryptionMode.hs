{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.S3EncryptionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.S3EncryptionMode
  ( S3EncryptionMode
      ( ..,
        SEMDisabled,
        SEMSseKMS,
        SEMSseS3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data S3EncryptionMode = S3EncryptionMode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SEMDisabled :: S3EncryptionMode
pattern SEMDisabled = S3EncryptionMode' "DISABLED"

pattern SEMSseKMS :: S3EncryptionMode
pattern SEMSseKMS = S3EncryptionMode' "SSE-KMS"

pattern SEMSseS3 :: S3EncryptionMode
pattern SEMSseS3 = S3EncryptionMode' "SSE-S3"

{-# COMPLETE
  SEMDisabled,
  SEMSseKMS,
  SEMSseS3,
  S3EncryptionMode'
  #-}

instance FromText S3EncryptionMode where
  parser = (S3EncryptionMode' . mk) <$> takeText

instance ToText S3EncryptionMode where
  toText (S3EncryptionMode' ci) = original ci

instance Hashable S3EncryptionMode

instance NFData S3EncryptionMode

instance ToByteString S3EncryptionMode

instance ToQuery S3EncryptionMode

instance ToHeader S3EncryptionMode

instance ToJSON S3EncryptionMode where
  toJSON = toJSONText

instance FromJSON S3EncryptionMode where
  parseJSON = parseJSONText "S3EncryptionMode"

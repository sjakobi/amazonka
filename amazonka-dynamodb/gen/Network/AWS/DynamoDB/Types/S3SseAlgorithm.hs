{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.S3SseAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.S3SseAlgorithm
  ( S3SseAlgorithm
      ( ..,
        SSAAES256,
        SSAKMS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data S3SseAlgorithm = S3SseAlgorithm' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSAAES256 :: S3SseAlgorithm
pattern SSAAES256 = S3SseAlgorithm' "AES256"

pattern SSAKMS :: S3SseAlgorithm
pattern SSAKMS = S3SseAlgorithm' "KMS"

{-# COMPLETE
  SSAAES256,
  SSAKMS,
  S3SseAlgorithm'
  #-}

instance FromText S3SseAlgorithm where
  parser = (S3SseAlgorithm' . mk) <$> takeText

instance ToText S3SseAlgorithm where
  toText (S3SseAlgorithm' ci) = original ci

instance Hashable S3SseAlgorithm

instance NFData S3SseAlgorithm

instance ToByteString S3SseAlgorithm

instance ToQuery S3SseAlgorithm

instance ToHeader S3SseAlgorithm

instance ToJSON S3SseAlgorithm where
  toJSON = toJSONText

instance FromJSON S3SseAlgorithm where
  parseJSON = parseJSONText "S3SseAlgorithm"

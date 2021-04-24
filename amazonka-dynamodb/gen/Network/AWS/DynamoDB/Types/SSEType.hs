{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.SSEType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.SSEType
  ( SSEType
      ( ..,
        AES256,
        KMS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SSEType = SSEType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AES256 :: SSEType
pattern AES256 = SSEType' "AES256"

pattern KMS :: SSEType
pattern KMS = SSEType' "KMS"

{-# COMPLETE
  AES256,
  KMS,
  SSEType'
  #-}

instance FromText SSEType where
  parser = (SSEType' . mk) <$> takeText

instance ToText SSEType where
  toText (SSEType' ci) = original ci

instance Hashable SSEType

instance NFData SSEType

instance ToByteString SSEType

instance ToQuery SSEType

instance ToHeader SSEType

instance ToJSON SSEType where
  toJSON = toJSONText

instance FromJSON SSEType where
  parseJSON = parseJSONText "SSEType"

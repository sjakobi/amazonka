{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.ParquetWriterVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ParquetWriterVersion
  ( ParquetWriterVersion
      ( ..,
        V1,
        V2
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ParquetWriterVersion
  = ParquetWriterVersion'
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

pattern V1 :: ParquetWriterVersion
pattern V1 = ParquetWriterVersion' "V1"

pattern V2 :: ParquetWriterVersion
pattern V2 = ParquetWriterVersion' "V2"

{-# COMPLETE
  V1,
  V2,
  ParquetWriterVersion'
  #-}

instance FromText ParquetWriterVersion where
  parser = (ParquetWriterVersion' . mk) <$> takeText

instance ToText ParquetWriterVersion where
  toText (ParquetWriterVersion' ci) = original ci

instance Hashable ParquetWriterVersion

instance NFData ParquetWriterVersion

instance ToByteString ParquetWriterVersion

instance ToQuery ParquetWriterVersion

instance ToHeader ParquetWriterVersion

instance ToJSON ParquetWriterVersion where
  toJSON = toJSONText

instance FromJSON ParquetWriterVersion where
  parseJSON = parseJSONText "ParquetWriterVersion"

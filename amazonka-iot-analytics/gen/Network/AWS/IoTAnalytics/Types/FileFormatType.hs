{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.FileFormatType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.FileFormatType
  ( FileFormatType
      ( ..,
        JSON,
        Parquet
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FileFormatType = FileFormatType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern JSON :: FileFormatType
pattern JSON = FileFormatType' "JSON"

pattern Parquet :: FileFormatType
pattern Parquet = FileFormatType' "PARQUET"

{-# COMPLETE
  JSON,
  Parquet,
  FileFormatType'
  #-}

instance FromText FileFormatType where
  parser = (FileFormatType' . mk) <$> takeText

instance ToText FileFormatType where
  toText (FileFormatType' ci) = original ci

instance Hashable FileFormatType

instance NFData FileFormatType

instance ToByteString FileFormatType

instance ToQuery FileFormatType

instance ToHeader FileFormatType

instance FromJSON FileFormatType where
  parseJSON = parseJSONText "FileFormatType"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.DataFormatValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DataFormatValue
  ( DataFormatValue
      ( ..,
        CSV,
        Parquet
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataFormatValue = DataFormatValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSV :: DataFormatValue
pattern CSV = DataFormatValue' "csv"

pattern Parquet :: DataFormatValue
pattern Parquet = DataFormatValue' "parquet"

{-# COMPLETE
  CSV,
  Parquet,
  DataFormatValue'
  #-}

instance FromText DataFormatValue where
  parser = (DataFormatValue' . mk) <$> takeText

instance ToText DataFormatValue where
  toText (DataFormatValue' ci) = original ci

instance Hashable DataFormatValue

instance NFData DataFormatValue

instance ToByteString DataFormatValue

instance ToQuery DataFormatValue

instance ToHeader DataFormatValue

instance ToJSON DataFormatValue where
  toJSON = toJSONText

instance FromJSON DataFormatValue where
  parseJSON = parseJSONText "DataFormatValue"

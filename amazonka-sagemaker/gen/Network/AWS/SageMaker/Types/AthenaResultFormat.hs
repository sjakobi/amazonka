{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AthenaResultFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AthenaResultFormat
  ( AthenaResultFormat
      ( ..,
        ARFAvro,
        ARFJSON,
        ARFOrc,
        ARFParquet,
        ARFTextfile
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The data storage format for Athena query results.
data AthenaResultFormat
  = AthenaResultFormat'
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

pattern ARFAvro :: AthenaResultFormat
pattern ARFAvro = AthenaResultFormat' "AVRO"

pattern ARFJSON :: AthenaResultFormat
pattern ARFJSON = AthenaResultFormat' "JSON"

pattern ARFOrc :: AthenaResultFormat
pattern ARFOrc = AthenaResultFormat' "ORC"

pattern ARFParquet :: AthenaResultFormat
pattern ARFParquet = AthenaResultFormat' "PARQUET"

pattern ARFTextfile :: AthenaResultFormat
pattern ARFTextfile = AthenaResultFormat' "TEXTFILE"

{-# COMPLETE
  ARFAvro,
  ARFJSON,
  ARFOrc,
  ARFParquet,
  ARFTextfile,
  AthenaResultFormat'
  #-}

instance FromText AthenaResultFormat where
  parser = (AthenaResultFormat' . mk) <$> takeText

instance ToText AthenaResultFormat where
  toText (AthenaResultFormat' ci) = original ci

instance Hashable AthenaResultFormat

instance NFData AthenaResultFormat

instance ToByteString AthenaResultFormat

instance ToQuery AthenaResultFormat

instance ToHeader AthenaResultFormat

instance ToJSON AthenaResultFormat where
  toJSON = toJSONText

instance FromJSON AthenaResultFormat where
  parseJSON = parseJSONText "AthenaResultFormat"

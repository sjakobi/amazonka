{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.RedshiftResultFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RedshiftResultFormat
  ( RedshiftResultFormat
      ( ..,
        CSV,
        Parquet
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The data storage format for Redshift query results.
data RedshiftResultFormat
  = RedshiftResultFormat'
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

pattern CSV :: RedshiftResultFormat
pattern CSV = RedshiftResultFormat' "CSV"

pattern Parquet :: RedshiftResultFormat
pattern Parquet = RedshiftResultFormat' "PARQUET"

{-# COMPLETE
  CSV,
  Parquet,
  RedshiftResultFormat'
  #-}

instance FromText RedshiftResultFormat where
  parser = (RedshiftResultFormat' . mk) <$> takeText

instance ToText RedshiftResultFormat where
  toText (RedshiftResultFormat' ci) = original ci

instance Hashable RedshiftResultFormat

instance NFData RedshiftResultFormat

instance ToByteString RedshiftResultFormat

instance ToQuery RedshiftResultFormat

instance ToHeader RedshiftResultFormat

instance ToJSON RedshiftResultFormat where
  toJSON = toJSONText

instance FromJSON RedshiftResultFormat where
  parseJSON = parseJSONText "RedshiftResultFormat"

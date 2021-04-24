{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.DataCatalogType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.DataCatalogType
  ( DataCatalogType
      ( ..,
        Glue,
        Hive,
        Lambda
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataCatalogType = DataCatalogType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Glue :: DataCatalogType
pattern Glue = DataCatalogType' "GLUE"

pattern Hive :: DataCatalogType
pattern Hive = DataCatalogType' "HIVE"

pattern Lambda :: DataCatalogType
pattern Lambda = DataCatalogType' "LAMBDA"

{-# COMPLETE
  Glue,
  Hive,
  Lambda,
  DataCatalogType'
  #-}

instance FromText DataCatalogType where
  parser = (DataCatalogType' . mk) <$> takeText

instance ToText DataCatalogType where
  toText (DataCatalogType' ci) = original ci

instance Hashable DataCatalogType

instance NFData DataCatalogType

instance ToByteString DataCatalogType

instance ToQuery DataCatalogType

instance ToHeader DataCatalogType

instance ToJSON DataCatalogType where
  toJSON = toJSONText

instance FromJSON DataCatalogType where
  parseJSON = parseJSONText "DataCatalogType"

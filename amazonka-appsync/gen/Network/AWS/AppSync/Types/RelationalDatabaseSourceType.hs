{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.RelationalDatabaseSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.RelationalDatabaseSourceType
  ( RelationalDatabaseSourceType
      ( ..,
        RDSHTTPEndpoint
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RelationalDatabaseSourceType
  = RelationalDatabaseSourceType'
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

pattern RDSHTTPEndpoint :: RelationalDatabaseSourceType
pattern RDSHTTPEndpoint = RelationalDatabaseSourceType' "RDS_HTTP_ENDPOINT"

{-# COMPLETE
  RDSHTTPEndpoint,
  RelationalDatabaseSourceType'
  #-}

instance FromText RelationalDatabaseSourceType where
  parser = (RelationalDatabaseSourceType' . mk) <$> takeText

instance ToText RelationalDatabaseSourceType where
  toText (RelationalDatabaseSourceType' ci) = original ci

instance Hashable RelationalDatabaseSourceType

instance NFData RelationalDatabaseSourceType

instance ToByteString RelationalDatabaseSourceType

instance ToQuery RelationalDatabaseSourceType

instance ToHeader RelationalDatabaseSourceType

instance ToJSON RelationalDatabaseSourceType where
  toJSON = toJSONText

instance FromJSON RelationalDatabaseSourceType where
  parseJSON = parseJSONText "RelationalDatabaseSourceType"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ServerCatalogStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerCatalogStatus
  ( ServerCatalogStatus
      ( ..,
        SCSAvailable,
        SCSDeleted,
        SCSExpired,
        SCSImporting,
        SCSNotImported
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServerCatalogStatus
  = ServerCatalogStatus'
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

pattern SCSAvailable :: ServerCatalogStatus
pattern SCSAvailable = ServerCatalogStatus' "AVAILABLE"

pattern SCSDeleted :: ServerCatalogStatus
pattern SCSDeleted = ServerCatalogStatus' "DELETED"

pattern SCSExpired :: ServerCatalogStatus
pattern SCSExpired = ServerCatalogStatus' "EXPIRED"

pattern SCSImporting :: ServerCatalogStatus
pattern SCSImporting = ServerCatalogStatus' "IMPORTING"

pattern SCSNotImported :: ServerCatalogStatus
pattern SCSNotImported = ServerCatalogStatus' "NOT_IMPORTED"

{-# COMPLETE
  SCSAvailable,
  SCSDeleted,
  SCSExpired,
  SCSImporting,
  SCSNotImported,
  ServerCatalogStatus'
  #-}

instance FromText ServerCatalogStatus where
  parser = (ServerCatalogStatus' . mk) <$> takeText

instance ToText ServerCatalogStatus where
  toText (ServerCatalogStatus' ci) = original ci

instance Hashable ServerCatalogStatus

instance NFData ServerCatalogStatus

instance ToByteString ServerCatalogStatus

instance ToQuery ServerCatalogStatus

instance ToHeader ServerCatalogStatus

instance FromJSON ServerCatalogStatus where
  parseJSON = parseJSONText "ServerCatalogStatus"

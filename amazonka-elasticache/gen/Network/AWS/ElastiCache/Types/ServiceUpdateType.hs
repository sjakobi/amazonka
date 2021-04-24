{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.ServiceUpdateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.ServiceUpdateType
  ( ServiceUpdateType
      ( ..,
        SecurityUpdate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServiceUpdateType = ServiceUpdateType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SecurityUpdate :: ServiceUpdateType
pattern SecurityUpdate = ServiceUpdateType' "security-update"

{-# COMPLETE
  SecurityUpdate,
  ServiceUpdateType'
  #-}

instance FromText ServiceUpdateType where
  parser = (ServiceUpdateType' . mk) <$> takeText

instance ToText ServiceUpdateType where
  toText (ServiceUpdateType' ci) = original ci

instance Hashable ServiceUpdateType

instance NFData ServiceUpdateType

instance ToByteString ServiceUpdateType

instance ToQuery ServiceUpdateType

instance ToHeader ServiceUpdateType

instance FromXML ServiceUpdateType where
  parseXML = parseXMLText "ServiceUpdateType"

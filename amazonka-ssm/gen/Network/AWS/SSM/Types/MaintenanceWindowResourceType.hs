{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MaintenanceWindowResourceType
  ( MaintenanceWindowResourceType
      ( ..,
        Instance,
        ResourceGroup
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MaintenanceWindowResourceType
  = MaintenanceWindowResourceType'
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

pattern Instance :: MaintenanceWindowResourceType
pattern Instance = MaintenanceWindowResourceType' "INSTANCE"

pattern ResourceGroup :: MaintenanceWindowResourceType
pattern ResourceGroup = MaintenanceWindowResourceType' "RESOURCE_GROUP"

{-# COMPLETE
  Instance,
  ResourceGroup,
  MaintenanceWindowResourceType'
  #-}

instance FromText MaintenanceWindowResourceType where
  parser = (MaintenanceWindowResourceType' . mk) <$> takeText

instance ToText MaintenanceWindowResourceType where
  toText (MaintenanceWindowResourceType' ci) = original ci

instance Hashable MaintenanceWindowResourceType

instance NFData MaintenanceWindowResourceType

instance ToByteString MaintenanceWindowResourceType

instance ToQuery MaintenanceWindowResourceType

instance ToHeader MaintenanceWindowResourceType

instance ToJSON MaintenanceWindowResourceType where
  toJSON = toJSONText

instance FromJSON MaintenanceWindowResourceType where
  parseJSON = parseJSONText "MaintenanceWindowResourceType"

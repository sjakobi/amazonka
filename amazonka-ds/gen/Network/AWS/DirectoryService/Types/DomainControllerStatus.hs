{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.DomainControllerStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DomainControllerStatus
  ( DomainControllerStatus
      ( ..,
        DCSActive,
        DCSCreating,
        DCSDeleted,
        DCSDeleting,
        DCSFailed,
        DCSImpaired,
        DCSRestoring
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DomainControllerStatus
  = DomainControllerStatus'
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

pattern DCSActive :: DomainControllerStatus
pattern DCSActive = DomainControllerStatus' "Active"

pattern DCSCreating :: DomainControllerStatus
pattern DCSCreating = DomainControllerStatus' "Creating"

pattern DCSDeleted :: DomainControllerStatus
pattern DCSDeleted = DomainControllerStatus' "Deleted"

pattern DCSDeleting :: DomainControllerStatus
pattern DCSDeleting = DomainControllerStatus' "Deleting"

pattern DCSFailed :: DomainControllerStatus
pattern DCSFailed = DomainControllerStatus' "Failed"

pattern DCSImpaired :: DomainControllerStatus
pattern DCSImpaired = DomainControllerStatus' "Impaired"

pattern DCSRestoring :: DomainControllerStatus
pattern DCSRestoring = DomainControllerStatus' "Restoring"

{-# COMPLETE
  DCSActive,
  DCSCreating,
  DCSDeleted,
  DCSDeleting,
  DCSFailed,
  DCSImpaired,
  DCSRestoring,
  DomainControllerStatus'
  #-}

instance FromText DomainControllerStatus where
  parser = (DomainControllerStatus' . mk) <$> takeText

instance ToText DomainControllerStatus where
  toText (DomainControllerStatus' ci) = original ci

instance Hashable DomainControllerStatus

instance NFData DomainControllerStatus

instance ToByteString DomainControllerStatus

instance ToQuery DomainControllerStatus

instance ToHeader DomainControllerStatus

instance FromJSON DomainControllerStatus where
  parseJSON = parseJSONText "DomainControllerStatus"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DomainStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DomainStatus
  ( DomainStatus
      ( ..,
        DSDeleteFailed,
        DSDeleting,
        DSFailed,
        DSInService,
        DSPending,
        DSUpdateFailed,
        DSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DomainStatus = DomainStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSDeleteFailed :: DomainStatus
pattern DSDeleteFailed = DomainStatus' "Delete_Failed"

pattern DSDeleting :: DomainStatus
pattern DSDeleting = DomainStatus' "Deleting"

pattern DSFailed :: DomainStatus
pattern DSFailed = DomainStatus' "Failed"

pattern DSInService :: DomainStatus
pattern DSInService = DomainStatus' "InService"

pattern DSPending :: DomainStatus
pattern DSPending = DomainStatus' "Pending"

pattern DSUpdateFailed :: DomainStatus
pattern DSUpdateFailed = DomainStatus' "Update_Failed"

pattern DSUpdating :: DomainStatus
pattern DSUpdating = DomainStatus' "Updating"

{-# COMPLETE
  DSDeleteFailed,
  DSDeleting,
  DSFailed,
  DSInService,
  DSPending,
  DSUpdateFailed,
  DSUpdating,
  DomainStatus'
  #-}

instance FromText DomainStatus where
  parser = (DomainStatus' . mk) <$> takeText

instance ToText DomainStatus where
  toText (DomainStatus' ci) = original ci

instance Hashable DomainStatus

instance NFData DomainStatus

instance ToByteString DomainStatus

instance ToQuery DomainStatus

instance ToHeader DomainStatus

instance FromJSON DomainStatus where
  parseJSON = parseJSONText "DomainStatus"

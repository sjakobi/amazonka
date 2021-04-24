{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.InstanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.InstanceStatus
  ( InstanceStatus
      ( ..,
        Active,
        CreationFailed,
        CreationInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceStatus = InstanceStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: InstanceStatus
pattern Active = InstanceStatus' "ACTIVE"

pattern CreationFailed :: InstanceStatus
pattern CreationFailed = InstanceStatus' "CREATION_FAILED"

pattern CreationInProgress :: InstanceStatus
pattern CreationInProgress = InstanceStatus' "CREATION_IN_PROGRESS"

{-# COMPLETE
  Active,
  CreationFailed,
  CreationInProgress,
  InstanceStatus'
  #-}

instance FromText InstanceStatus where
  parser = (InstanceStatus' . mk) <$> takeText

instance ToText InstanceStatus where
  toText (InstanceStatus' ci) = original ci

instance Hashable InstanceStatus

instance NFData InstanceStatus

instance ToByteString InstanceStatus

instance ToQuery InstanceStatus

instance ToHeader InstanceStatus

instance FromJSON InstanceStatus where
  parseJSON = parseJSONText "InstanceStatus"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ServiceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ServiceState
  ( ServiceState
      ( ..,
        SSAvailable,
        SSDeleted,
        SSDeleting,
        SSFailed,
        SSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ServiceState = ServiceState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SSAvailable :: ServiceState
pattern SSAvailable = ServiceState' "Available"

pattern SSDeleted :: ServiceState
pattern SSDeleted = ServiceState' "Deleted"

pattern SSDeleting :: ServiceState
pattern SSDeleting = ServiceState' "Deleting"

pattern SSFailed :: ServiceState
pattern SSFailed = ServiceState' "Failed"

pattern SSPending :: ServiceState
pattern SSPending = ServiceState' "Pending"

{-# COMPLETE
  SSAvailable,
  SSDeleted,
  SSDeleting,
  SSFailed,
  SSPending,
  ServiceState'
  #-}

instance FromText ServiceState where
  parser = (ServiceState' . mk) <$> takeText

instance ToText ServiceState where
  toText (ServiceState' ci) = original ci

instance Hashable ServiceState

instance NFData ServiceState

instance ToByteString ServiceState

instance ToQuery ServiceState

instance ToHeader ServiceState

instance FromXML ServiceState where
  parseXML = parseXMLText "ServiceState"

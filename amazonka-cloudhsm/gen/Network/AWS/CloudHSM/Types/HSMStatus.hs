{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.Types.HSMStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.HSMStatus
  ( HSMStatus
      ( ..,
        Degraded,
        Pending,
        Running,
        Suspended,
        Terminated,
        Terminating,
        Updating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HSMStatus = HSMStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Degraded :: HSMStatus
pattern Degraded = HSMStatus' "DEGRADED"

pattern Pending :: HSMStatus
pattern Pending = HSMStatus' "PENDING"

pattern Running :: HSMStatus
pattern Running = HSMStatus' "RUNNING"

pattern Suspended :: HSMStatus
pattern Suspended = HSMStatus' "SUSPENDED"

pattern Terminated :: HSMStatus
pattern Terminated = HSMStatus' "TERMINATED"

pattern Terminating :: HSMStatus
pattern Terminating = HSMStatus' "TERMINATING"

pattern Updating :: HSMStatus
pattern Updating = HSMStatus' "UPDATING"

{-# COMPLETE
  Degraded,
  Pending,
  Running,
  Suspended,
  Terminated,
  Terminating,
  Updating,
  HSMStatus'
  #-}

instance FromText HSMStatus where
  parser = (HSMStatus' . mk) <$> takeText

instance ToText HSMStatus where
  toText (HSMStatus' ci) = original ci

instance Hashable HSMStatus

instance NFData HSMStatus

instance ToByteString HSMStatus

instance ToQuery HSMStatus

instance ToHeader HSMStatus

instance FromJSON HSMStatus where
  parseJSON = parseJSONText "HSMStatus"

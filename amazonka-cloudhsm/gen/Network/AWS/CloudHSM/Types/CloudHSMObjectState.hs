{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSM.Types.CloudHSMObjectState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.CloudHSMObjectState
  ( CloudHSMObjectState
      ( ..,
        CHOSDegraded,
        CHOSReady,
        CHOSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CloudHSMObjectState
  = CloudHSMObjectState'
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

pattern CHOSDegraded :: CloudHSMObjectState
pattern CHOSDegraded = CloudHSMObjectState' "DEGRADED"

pattern CHOSReady :: CloudHSMObjectState
pattern CHOSReady = CloudHSMObjectState' "READY"

pattern CHOSUpdating :: CloudHSMObjectState
pattern CHOSUpdating = CloudHSMObjectState' "UPDATING"

{-# COMPLETE
  CHOSDegraded,
  CHOSReady,
  CHOSUpdating,
  CloudHSMObjectState'
  #-}

instance FromText CloudHSMObjectState where
  parser = (CloudHSMObjectState' . mk) <$> takeText

instance ToText CloudHSMObjectState where
  toText (CloudHSMObjectState' ci) = original ci

instance Hashable CloudHSMObjectState

instance NFData CloudHSMObjectState

instance ToByteString CloudHSMObjectState

instance ToQuery CloudHSMObjectState

instance ToHeader CloudHSMObjectState

instance FromJSON CloudHSMObjectState where
  parseJSON = parseJSONText "CloudHSMObjectState"

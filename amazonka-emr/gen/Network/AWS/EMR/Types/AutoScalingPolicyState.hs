{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.AutoScalingPolicyState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.AutoScalingPolicyState
  ( AutoScalingPolicyState
      ( ..,
        ASPSAttached,
        ASPSAttaching,
        ASPSDetached,
        ASPSDetaching,
        ASPSFailed,
        ASPSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutoScalingPolicyState
  = AutoScalingPolicyState'
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

pattern ASPSAttached :: AutoScalingPolicyState
pattern ASPSAttached = AutoScalingPolicyState' "ATTACHED"

pattern ASPSAttaching :: AutoScalingPolicyState
pattern ASPSAttaching = AutoScalingPolicyState' "ATTACHING"

pattern ASPSDetached :: AutoScalingPolicyState
pattern ASPSDetached = AutoScalingPolicyState' "DETACHED"

pattern ASPSDetaching :: AutoScalingPolicyState
pattern ASPSDetaching = AutoScalingPolicyState' "DETACHING"

pattern ASPSFailed :: AutoScalingPolicyState
pattern ASPSFailed = AutoScalingPolicyState' "FAILED"

pattern ASPSPending :: AutoScalingPolicyState
pattern ASPSPending = AutoScalingPolicyState' "PENDING"

{-# COMPLETE
  ASPSAttached,
  ASPSAttaching,
  ASPSDetached,
  ASPSDetaching,
  ASPSFailed,
  ASPSPending,
  AutoScalingPolicyState'
  #-}

instance FromText AutoScalingPolicyState where
  parser = (AutoScalingPolicyState' . mk) <$> takeText

instance ToText AutoScalingPolicyState where
  toText (AutoScalingPolicyState' ci) = original ci

instance Hashable AutoScalingPolicyState

instance NFData AutoScalingPolicyState

instance ToByteString AutoScalingPolicyState

instance ToQuery AutoScalingPolicyState

instance ToHeader AutoScalingPolicyState

instance FromJSON AutoScalingPolicyState where
  parseJSON = parseJSONText "AutoScalingPolicyState"

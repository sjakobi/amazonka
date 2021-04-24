{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
  ( InstanceFleetStateChangeReasonCode
      ( ..,
        ClusterTerminated,
        InstanceFailure,
        InternalError,
        ValidationError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceFleetStateChangeReasonCode
  = InstanceFleetStateChangeReasonCode'
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

pattern ClusterTerminated :: InstanceFleetStateChangeReasonCode
pattern ClusterTerminated = InstanceFleetStateChangeReasonCode' "CLUSTER_TERMINATED"

pattern InstanceFailure :: InstanceFleetStateChangeReasonCode
pattern InstanceFailure = InstanceFleetStateChangeReasonCode' "INSTANCE_FAILURE"

pattern InternalError :: InstanceFleetStateChangeReasonCode
pattern InternalError = InstanceFleetStateChangeReasonCode' "INTERNAL_ERROR"

pattern ValidationError :: InstanceFleetStateChangeReasonCode
pattern ValidationError = InstanceFleetStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  ClusterTerminated,
  InstanceFailure,
  InternalError,
  ValidationError,
  InstanceFleetStateChangeReasonCode'
  #-}

instance FromText InstanceFleetStateChangeReasonCode where
  parser = (InstanceFleetStateChangeReasonCode' . mk) <$> takeText

instance ToText InstanceFleetStateChangeReasonCode where
  toText (InstanceFleetStateChangeReasonCode' ci) = original ci

instance Hashable InstanceFleetStateChangeReasonCode

instance NFData InstanceFleetStateChangeReasonCode

instance ToByteString InstanceFleetStateChangeReasonCode

instance ToQuery InstanceFleetStateChangeReasonCode

instance ToHeader InstanceFleetStateChangeReasonCode

instance FromJSON InstanceFleetStateChangeReasonCode where
  parseJSON = parseJSONText "InstanceFleetStateChangeReasonCode"

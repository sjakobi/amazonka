{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.ScalingActivityStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.ScalingActivityStatusCode
  ( ScalingActivityStatusCode
      ( ..,
        ScalingActivityStatusCodeCancelled,
        ScalingActivityStatusCodeFailed,
        ScalingActivityStatusCodeInProgress,
        ScalingActivityStatusCodeMidLifecycleAction,
        ScalingActivityStatusCodePendingSpotBidPlacement,
        ScalingActivityStatusCodePreInService,
        ScalingActivityStatusCodeSuccessful,
        ScalingActivityStatusCodeWaitingForELBConnectionDraining,
        ScalingActivityStatusCodeWaitingForInstanceId,
        ScalingActivityStatusCodeWaitingForInstanceWarmup,
        ScalingActivityStatusCodeWaitingForSpotInstanceId,
        ScalingActivityStatusCodeWaitingForSpotInstanceRequestId
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScalingActivityStatusCode = ScalingActivityStatusCode'
  { fromScalingActivityStatusCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ScalingActivityStatusCodeCancelled :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeCancelled = ScalingActivityStatusCode' "Cancelled"

pattern ScalingActivityStatusCodeFailed :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeFailed = ScalingActivityStatusCode' "Failed"

pattern ScalingActivityStatusCodeInProgress :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeInProgress = ScalingActivityStatusCode' "InProgress"

pattern ScalingActivityStatusCodeMidLifecycleAction :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeMidLifecycleAction = ScalingActivityStatusCode' "MidLifecycleAction"

pattern ScalingActivityStatusCodePendingSpotBidPlacement :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodePendingSpotBidPlacement = ScalingActivityStatusCode' "PendingSpotBidPlacement"

pattern ScalingActivityStatusCodePreInService :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodePreInService = ScalingActivityStatusCode' "PreInService"

pattern ScalingActivityStatusCodeSuccessful :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeSuccessful = ScalingActivityStatusCode' "Successful"

pattern ScalingActivityStatusCodeWaitingForELBConnectionDraining :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeWaitingForELBConnectionDraining = ScalingActivityStatusCode' "WaitingForELBConnectionDraining"

pattern ScalingActivityStatusCodeWaitingForInstanceId :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeWaitingForInstanceId = ScalingActivityStatusCode' "WaitingForInstanceId"

pattern ScalingActivityStatusCodeWaitingForInstanceWarmup :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeWaitingForInstanceWarmup = ScalingActivityStatusCode' "WaitingForInstanceWarmup"

pattern ScalingActivityStatusCodeWaitingForSpotInstanceId :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeWaitingForSpotInstanceId = ScalingActivityStatusCode' "WaitingForSpotInstanceId"

pattern ScalingActivityStatusCodeWaitingForSpotInstanceRequestId :: ScalingActivityStatusCode
pattern ScalingActivityStatusCodeWaitingForSpotInstanceRequestId = ScalingActivityStatusCode' "WaitingForSpotInstanceRequestId"

{-# COMPLETE
  ScalingActivityStatusCodeCancelled,
  ScalingActivityStatusCodeFailed,
  ScalingActivityStatusCodeInProgress,
  ScalingActivityStatusCodeMidLifecycleAction,
  ScalingActivityStatusCodePendingSpotBidPlacement,
  ScalingActivityStatusCodePreInService,
  ScalingActivityStatusCodeSuccessful,
  ScalingActivityStatusCodeWaitingForELBConnectionDraining,
  ScalingActivityStatusCodeWaitingForInstanceId,
  ScalingActivityStatusCodeWaitingForInstanceWarmup,
  ScalingActivityStatusCodeWaitingForSpotInstanceId,
  ScalingActivityStatusCodeWaitingForSpotInstanceRequestId,
  ScalingActivityStatusCode'
  #-}

instance Prelude.FromText ScalingActivityStatusCode where
  parser = ScalingActivityStatusCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScalingActivityStatusCode where
  toText (ScalingActivityStatusCode' x) = x

instance Prelude.Hashable ScalingActivityStatusCode

instance Prelude.NFData ScalingActivityStatusCode

instance Prelude.ToByteString ScalingActivityStatusCode

instance Prelude.ToQuery ScalingActivityStatusCode

instance Prelude.ToHeader ScalingActivityStatusCode

instance Prelude.FromXML ScalingActivityStatusCode where
  parseXML = Prelude.parseXMLText "ScalingActivityStatusCode"

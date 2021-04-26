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
-- Module      : Network.AWS.CloudFront.Types.RealtimeMetricsSubscriptionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.RealtimeMetricsSubscriptionStatus
  ( RealtimeMetricsSubscriptionStatus
      ( ..,
        RealtimeMetricsSubscriptionStatusDisabled,
        RealtimeMetricsSubscriptionStatusEnabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RealtimeMetricsSubscriptionStatus = RealtimeMetricsSubscriptionStatus'
  { fromRealtimeMetricsSubscriptionStatus ::
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

pattern RealtimeMetricsSubscriptionStatusDisabled :: RealtimeMetricsSubscriptionStatus
pattern RealtimeMetricsSubscriptionStatusDisabled = RealtimeMetricsSubscriptionStatus' "Disabled"

pattern RealtimeMetricsSubscriptionStatusEnabled :: RealtimeMetricsSubscriptionStatus
pattern RealtimeMetricsSubscriptionStatusEnabled = RealtimeMetricsSubscriptionStatus' "Enabled"

{-# COMPLETE
  RealtimeMetricsSubscriptionStatusDisabled,
  RealtimeMetricsSubscriptionStatusEnabled,
  RealtimeMetricsSubscriptionStatus'
  #-}

instance Prelude.FromText RealtimeMetricsSubscriptionStatus where
  parser = RealtimeMetricsSubscriptionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RealtimeMetricsSubscriptionStatus where
  toText (RealtimeMetricsSubscriptionStatus' x) = x

instance Prelude.Hashable RealtimeMetricsSubscriptionStatus

instance Prelude.NFData RealtimeMetricsSubscriptionStatus

instance Prelude.ToByteString RealtimeMetricsSubscriptionStatus

instance Prelude.ToQuery RealtimeMetricsSubscriptionStatus

instance Prelude.ToHeader RealtimeMetricsSubscriptionStatus

instance Prelude.FromXML RealtimeMetricsSubscriptionStatus where
  parseXML = Prelude.parseXMLText "RealtimeMetricsSubscriptionStatus"

instance Prelude.ToXML RealtimeMetricsSubscriptionStatus where
  toXML = Prelude.toXMLText

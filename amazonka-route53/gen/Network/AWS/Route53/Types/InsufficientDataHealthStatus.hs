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
-- Module      : Network.AWS.Route53.Types.InsufficientDataHealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.InsufficientDataHealthStatus
  ( InsufficientDataHealthStatus
      ( ..,
        InsufficientDataHealthStatusHealthy,
        InsufficientDataHealthStatusLastKnownStatus,
        InsufficientDataHealthStatusUnhealthy
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype InsufficientDataHealthStatus = InsufficientDataHealthStatus'
  { fromInsufficientDataHealthStatus ::
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

pattern InsufficientDataHealthStatusHealthy :: InsufficientDataHealthStatus
pattern InsufficientDataHealthStatusHealthy = InsufficientDataHealthStatus' "Healthy"

pattern InsufficientDataHealthStatusLastKnownStatus :: InsufficientDataHealthStatus
pattern InsufficientDataHealthStatusLastKnownStatus = InsufficientDataHealthStatus' "LastKnownStatus"

pattern InsufficientDataHealthStatusUnhealthy :: InsufficientDataHealthStatus
pattern InsufficientDataHealthStatusUnhealthy = InsufficientDataHealthStatus' "Unhealthy"

{-# COMPLETE
  InsufficientDataHealthStatusHealthy,
  InsufficientDataHealthStatusLastKnownStatus,
  InsufficientDataHealthStatusUnhealthy,
  InsufficientDataHealthStatus'
  #-}

instance Prelude.FromText InsufficientDataHealthStatus where
  parser = InsufficientDataHealthStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText InsufficientDataHealthStatus where
  toText (InsufficientDataHealthStatus' x) = x

instance Prelude.Hashable InsufficientDataHealthStatus

instance Prelude.NFData InsufficientDataHealthStatus

instance Prelude.ToByteString InsufficientDataHealthStatus

instance Prelude.ToQuery InsufficientDataHealthStatus

instance Prelude.ToHeader InsufficientDataHealthStatus

instance Prelude.FromXML InsufficientDataHealthStatus where
  parseXML = Prelude.parseXMLText "InsufficientDataHealthStatus"

instance Prelude.ToXML InsufficientDataHealthStatus where
  toXML = Prelude.toXMLText

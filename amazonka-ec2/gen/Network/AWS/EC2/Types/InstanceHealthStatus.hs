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
-- Module      : Network.AWS.EC2.Types.InstanceHealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceHealthStatus
  ( InstanceHealthStatus
      ( ..,
        InstanceHealthStatusHealthy,
        InstanceHealthStatusUnhealthy
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceHealthStatus = InstanceHealthStatus'
  { fromInstanceHealthStatus ::
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

pattern InstanceHealthStatusHealthy :: InstanceHealthStatus
pattern InstanceHealthStatusHealthy = InstanceHealthStatus' "healthy"

pattern InstanceHealthStatusUnhealthy :: InstanceHealthStatus
pattern InstanceHealthStatusUnhealthy = InstanceHealthStatus' "unhealthy"

{-# COMPLETE
  InstanceHealthStatusHealthy,
  InstanceHealthStatusUnhealthy,
  InstanceHealthStatus'
  #-}

instance Prelude.FromText InstanceHealthStatus where
  parser = InstanceHealthStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceHealthStatus where
  toText (InstanceHealthStatus' x) = x

instance Prelude.Hashable InstanceHealthStatus

instance Prelude.NFData InstanceHealthStatus

instance Prelude.ToByteString InstanceHealthStatus

instance Prelude.ToQuery InstanceHealthStatus

instance Prelude.ToHeader InstanceHealthStatus

instance Prelude.FromXML InstanceHealthStatus where
  parseXML = Prelude.parseXMLText "InstanceHealthStatus"

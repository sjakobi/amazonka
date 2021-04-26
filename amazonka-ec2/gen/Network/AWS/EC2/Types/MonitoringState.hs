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
-- Module      : Network.AWS.EC2.Types.MonitoringState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.MonitoringState
  ( MonitoringState
      ( ..,
        MonitoringStateDisabled,
        MonitoringStateDisabling,
        MonitoringStateEnabled,
        MonitoringStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype MonitoringState = MonitoringState'
  { fromMonitoringState ::
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

pattern MonitoringStateDisabled :: MonitoringState
pattern MonitoringStateDisabled = MonitoringState' "disabled"

pattern MonitoringStateDisabling :: MonitoringState
pattern MonitoringStateDisabling = MonitoringState' "disabling"

pattern MonitoringStateEnabled :: MonitoringState
pattern MonitoringStateEnabled = MonitoringState' "enabled"

pattern MonitoringStatePending :: MonitoringState
pattern MonitoringStatePending = MonitoringState' "pending"

{-# COMPLETE
  MonitoringStateDisabled,
  MonitoringStateDisabling,
  MonitoringStateEnabled,
  MonitoringStatePending,
  MonitoringState'
  #-}

instance Prelude.FromText MonitoringState where
  parser = MonitoringState' Prelude.<$> Prelude.takeText

instance Prelude.ToText MonitoringState where
  toText (MonitoringState' x) = x

instance Prelude.Hashable MonitoringState

instance Prelude.NFData MonitoringState

instance Prelude.ToByteString MonitoringState

instance Prelude.ToQuery MonitoringState

instance Prelude.ToHeader MonitoringState

instance Prelude.FromXML MonitoringState where
  parseXML = Prelude.parseXMLText "MonitoringState"

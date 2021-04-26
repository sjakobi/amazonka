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
-- Module      : Network.AWS.EC2.Types.InstanceStateName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceStateName
  ( InstanceStateName
      ( ..,
        InstanceStateNamePending,
        InstanceStateNameRunning,
        InstanceStateNameShuttingDown,
        InstanceStateNameStopped,
        InstanceStateNameStopping,
        InstanceStateNameTerminated
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceStateName = InstanceStateName'
  { fromInstanceStateName ::
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

pattern InstanceStateNamePending :: InstanceStateName
pattern InstanceStateNamePending = InstanceStateName' "pending"

pattern InstanceStateNameRunning :: InstanceStateName
pattern InstanceStateNameRunning = InstanceStateName' "running"

pattern InstanceStateNameShuttingDown :: InstanceStateName
pattern InstanceStateNameShuttingDown = InstanceStateName' "shutting-down"

pattern InstanceStateNameStopped :: InstanceStateName
pattern InstanceStateNameStopped = InstanceStateName' "stopped"

pattern InstanceStateNameStopping :: InstanceStateName
pattern InstanceStateNameStopping = InstanceStateName' "stopping"

pattern InstanceStateNameTerminated :: InstanceStateName
pattern InstanceStateNameTerminated = InstanceStateName' "terminated"

{-# COMPLETE
  InstanceStateNamePending,
  InstanceStateNameRunning,
  InstanceStateNameShuttingDown,
  InstanceStateNameStopped,
  InstanceStateNameStopping,
  InstanceStateNameTerminated,
  InstanceStateName'
  #-}

instance Prelude.FromText InstanceStateName where
  parser = InstanceStateName' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceStateName where
  toText (InstanceStateName' x) = x

instance Prelude.Hashable InstanceStateName

instance Prelude.NFData InstanceStateName

instance Prelude.ToByteString InstanceStateName

instance Prelude.ToQuery InstanceStateName

instance Prelude.ToHeader InstanceStateName

instance Prelude.FromXML InstanceStateName where
  parseXML = Prelude.parseXMLText "InstanceStateName"

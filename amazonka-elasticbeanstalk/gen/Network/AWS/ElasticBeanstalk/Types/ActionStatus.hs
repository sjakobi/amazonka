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
-- Module      : Network.AWS.ElasticBeanstalk.Types.ActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ActionStatus
  ( ActionStatus
      ( ..,
        ActionStatusPending,
        ActionStatusRunning,
        ActionStatusScheduled,
        ActionStatusUnknown
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActionStatus = ActionStatus'
  { fromActionStatus ::
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

pattern ActionStatusPending :: ActionStatus
pattern ActionStatusPending = ActionStatus' "Pending"

pattern ActionStatusRunning :: ActionStatus
pattern ActionStatusRunning = ActionStatus' "Running"

pattern ActionStatusScheduled :: ActionStatus
pattern ActionStatusScheduled = ActionStatus' "Scheduled"

pattern ActionStatusUnknown :: ActionStatus
pattern ActionStatusUnknown = ActionStatus' "Unknown"

{-# COMPLETE
  ActionStatusPending,
  ActionStatusRunning,
  ActionStatusScheduled,
  ActionStatusUnknown,
  ActionStatus'
  #-}

instance Prelude.FromText ActionStatus where
  parser = ActionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionStatus where
  toText (ActionStatus' x) = x

instance Prelude.Hashable ActionStatus

instance Prelude.NFData ActionStatus

instance Prelude.ToByteString ActionStatus

instance Prelude.ToQuery ActionStatus

instance Prelude.ToHeader ActionStatus

instance Prelude.FromXML ActionStatus where
  parseXML = Prelude.parseXMLText "ActionStatus"

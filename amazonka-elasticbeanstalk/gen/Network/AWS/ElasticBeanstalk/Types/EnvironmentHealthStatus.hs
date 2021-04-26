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
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthStatus
  ( EnvironmentHealthStatus
      ( ..,
        EnvironmentHealthStatusDegraded,
        EnvironmentHealthStatusInfo,
        EnvironmentHealthStatusNoData,
        EnvironmentHealthStatusOK,
        EnvironmentHealthStatusPending,
        EnvironmentHealthStatusSevere,
        EnvironmentHealthStatusSuspended,
        EnvironmentHealthStatusUnknown,
        EnvironmentHealthStatusWarning
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentHealthStatus = EnvironmentHealthStatus'
  { fromEnvironmentHealthStatus ::
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

pattern EnvironmentHealthStatusDegraded :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusDegraded = EnvironmentHealthStatus' "Degraded"

pattern EnvironmentHealthStatusInfo :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusInfo = EnvironmentHealthStatus' "Info"

pattern EnvironmentHealthStatusNoData :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusNoData = EnvironmentHealthStatus' "NoData"

pattern EnvironmentHealthStatusOK :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusOK = EnvironmentHealthStatus' "Ok"

pattern EnvironmentHealthStatusPending :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusPending = EnvironmentHealthStatus' "Pending"

pattern EnvironmentHealthStatusSevere :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusSevere = EnvironmentHealthStatus' "Severe"

pattern EnvironmentHealthStatusSuspended :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusSuspended = EnvironmentHealthStatus' "Suspended"

pattern EnvironmentHealthStatusUnknown :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusUnknown = EnvironmentHealthStatus' "Unknown"

pattern EnvironmentHealthStatusWarning :: EnvironmentHealthStatus
pattern EnvironmentHealthStatusWarning = EnvironmentHealthStatus' "Warning"

{-# COMPLETE
  EnvironmentHealthStatusDegraded,
  EnvironmentHealthStatusInfo,
  EnvironmentHealthStatusNoData,
  EnvironmentHealthStatusOK,
  EnvironmentHealthStatusPending,
  EnvironmentHealthStatusSevere,
  EnvironmentHealthStatusSuspended,
  EnvironmentHealthStatusUnknown,
  EnvironmentHealthStatusWarning,
  EnvironmentHealthStatus'
  #-}

instance Prelude.FromText EnvironmentHealthStatus where
  parser = EnvironmentHealthStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentHealthStatus where
  toText (EnvironmentHealthStatus' x) = x

instance Prelude.Hashable EnvironmentHealthStatus

instance Prelude.NFData EnvironmentHealthStatus

instance Prelude.ToByteString EnvironmentHealthStatus

instance Prelude.ToQuery EnvironmentHealthStatus

instance Prelude.ToHeader EnvironmentHealthStatus

instance Prelude.FromXML EnvironmentHealthStatus where
  parseXML = Prelude.parseXMLText "EnvironmentHealthStatus"

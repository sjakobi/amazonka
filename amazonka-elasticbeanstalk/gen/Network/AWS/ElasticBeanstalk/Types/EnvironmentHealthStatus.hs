{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        EHSDegraded,
        EHSInfo,
        EHSNoData,
        EHSOK,
        EHSPending,
        EHSSevere,
        EHSSuspended,
        EHSUnknown,
        EHSWarning
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentHealthStatus
  = EnvironmentHealthStatus'
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

pattern EHSDegraded :: EnvironmentHealthStatus
pattern EHSDegraded = EnvironmentHealthStatus' "Degraded"

pattern EHSInfo :: EnvironmentHealthStatus
pattern EHSInfo = EnvironmentHealthStatus' "Info"

pattern EHSNoData :: EnvironmentHealthStatus
pattern EHSNoData = EnvironmentHealthStatus' "NoData"

pattern EHSOK :: EnvironmentHealthStatus
pattern EHSOK = EnvironmentHealthStatus' "Ok"

pattern EHSPending :: EnvironmentHealthStatus
pattern EHSPending = EnvironmentHealthStatus' "Pending"

pattern EHSSevere :: EnvironmentHealthStatus
pattern EHSSevere = EnvironmentHealthStatus' "Severe"

pattern EHSSuspended :: EnvironmentHealthStatus
pattern EHSSuspended = EnvironmentHealthStatus' "Suspended"

pattern EHSUnknown :: EnvironmentHealthStatus
pattern EHSUnknown = EnvironmentHealthStatus' "Unknown"

pattern EHSWarning :: EnvironmentHealthStatus
pattern EHSWarning = EnvironmentHealthStatus' "Warning"

{-# COMPLETE
  EHSDegraded,
  EHSInfo,
  EHSNoData,
  EHSOK,
  EHSPending,
  EHSSevere,
  EHSSuspended,
  EHSUnknown,
  EHSWarning,
  EnvironmentHealthStatus'
  #-}

instance FromText EnvironmentHealthStatus where
  parser = (EnvironmentHealthStatus' . mk) <$> takeText

instance ToText EnvironmentHealthStatus where
  toText (EnvironmentHealthStatus' ci) = original ci

instance Hashable EnvironmentHealthStatus

instance NFData EnvironmentHealthStatus

instance ToByteString EnvironmentHealthStatus

instance ToQuery EnvironmentHealthStatus

instance ToHeader EnvironmentHealthStatus

instance FromXML EnvironmentHealthStatus where
  parseXML = parseXMLText "EnvironmentHealthStatus"

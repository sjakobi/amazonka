{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ReportInstanceReasonCodes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReportInstanceReasonCodes
  ( ReportInstanceReasonCodes
      ( ..,
        InstanceStuckInState,
        NotAcceptingCredentials,
        Other,
        PasswordNotAvailable,
        PerformanceEBSVolume,
        PerformanceInstanceStore,
        PerformanceNetwork,
        PerformanceOther,
        Unresponsive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ReportInstanceReasonCodes
  = ReportInstanceReasonCodes'
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

pattern InstanceStuckInState :: ReportInstanceReasonCodes
pattern InstanceStuckInState = ReportInstanceReasonCodes' "instance-stuck-in-state"

pattern NotAcceptingCredentials :: ReportInstanceReasonCodes
pattern NotAcceptingCredentials = ReportInstanceReasonCodes' "not-accepting-credentials"

pattern Other :: ReportInstanceReasonCodes
pattern Other = ReportInstanceReasonCodes' "other"

pattern PasswordNotAvailable :: ReportInstanceReasonCodes
pattern PasswordNotAvailable = ReportInstanceReasonCodes' "password-not-available"

pattern PerformanceEBSVolume :: ReportInstanceReasonCodes
pattern PerformanceEBSVolume = ReportInstanceReasonCodes' "performance-ebs-volume"

pattern PerformanceInstanceStore :: ReportInstanceReasonCodes
pattern PerformanceInstanceStore = ReportInstanceReasonCodes' "performance-instance-store"

pattern PerformanceNetwork :: ReportInstanceReasonCodes
pattern PerformanceNetwork = ReportInstanceReasonCodes' "performance-network"

pattern PerformanceOther :: ReportInstanceReasonCodes
pattern PerformanceOther = ReportInstanceReasonCodes' "performance-other"

pattern Unresponsive :: ReportInstanceReasonCodes
pattern Unresponsive = ReportInstanceReasonCodes' "unresponsive"

{-# COMPLETE
  InstanceStuckInState,
  NotAcceptingCredentials,
  Other,
  PasswordNotAvailable,
  PerformanceEBSVolume,
  PerformanceInstanceStore,
  PerformanceNetwork,
  PerformanceOther,
  Unresponsive,
  ReportInstanceReasonCodes'
  #-}

instance FromText ReportInstanceReasonCodes where
  parser = (ReportInstanceReasonCodes' . mk) <$> takeText

instance ToText ReportInstanceReasonCodes where
  toText (ReportInstanceReasonCodes' ci) = original ci

instance Hashable ReportInstanceReasonCodes

instance NFData ReportInstanceReasonCodes

instance ToByteString ReportInstanceReasonCodes

instance ToQuery ReportInstanceReasonCodes

instance ToHeader ReportInstanceReasonCodes

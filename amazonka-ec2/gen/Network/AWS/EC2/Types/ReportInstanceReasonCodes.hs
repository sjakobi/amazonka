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
-- Module      : Network.AWS.EC2.Types.ReportInstanceReasonCodes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReportInstanceReasonCodes
  ( ReportInstanceReasonCodes
      ( ..,
        ReportInstanceReasonCodesInstanceStuckInState,
        ReportInstanceReasonCodesNotAcceptingCredentials,
        ReportInstanceReasonCodesOther,
        ReportInstanceReasonCodesPasswordNotAvailable,
        ReportInstanceReasonCodesPerformanceEbsVolume,
        ReportInstanceReasonCodesPerformanceInstanceStore,
        ReportInstanceReasonCodesPerformanceNetwork,
        ReportInstanceReasonCodesPerformanceOther,
        ReportInstanceReasonCodesUnresponsive
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ReportInstanceReasonCodes = ReportInstanceReasonCodes'
  { fromReportInstanceReasonCodes ::
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

pattern ReportInstanceReasonCodesInstanceStuckInState :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesInstanceStuckInState = ReportInstanceReasonCodes' "instance-stuck-in-state"

pattern ReportInstanceReasonCodesNotAcceptingCredentials :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesNotAcceptingCredentials = ReportInstanceReasonCodes' "not-accepting-credentials"

pattern ReportInstanceReasonCodesOther :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesOther = ReportInstanceReasonCodes' "other"

pattern ReportInstanceReasonCodesPasswordNotAvailable :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesPasswordNotAvailable = ReportInstanceReasonCodes' "password-not-available"

pattern ReportInstanceReasonCodesPerformanceEbsVolume :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesPerformanceEbsVolume = ReportInstanceReasonCodes' "performance-ebs-volume"

pattern ReportInstanceReasonCodesPerformanceInstanceStore :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesPerformanceInstanceStore = ReportInstanceReasonCodes' "performance-instance-store"

pattern ReportInstanceReasonCodesPerformanceNetwork :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesPerformanceNetwork = ReportInstanceReasonCodes' "performance-network"

pattern ReportInstanceReasonCodesPerformanceOther :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesPerformanceOther = ReportInstanceReasonCodes' "performance-other"

pattern ReportInstanceReasonCodesUnresponsive :: ReportInstanceReasonCodes
pattern ReportInstanceReasonCodesUnresponsive = ReportInstanceReasonCodes' "unresponsive"

{-# COMPLETE
  ReportInstanceReasonCodesInstanceStuckInState,
  ReportInstanceReasonCodesNotAcceptingCredentials,
  ReportInstanceReasonCodesOther,
  ReportInstanceReasonCodesPasswordNotAvailable,
  ReportInstanceReasonCodesPerformanceEbsVolume,
  ReportInstanceReasonCodesPerformanceInstanceStore,
  ReportInstanceReasonCodesPerformanceNetwork,
  ReportInstanceReasonCodesPerformanceOther,
  ReportInstanceReasonCodesUnresponsive,
  ReportInstanceReasonCodes'
  #-}

instance Prelude.FromText ReportInstanceReasonCodes where
  parser = ReportInstanceReasonCodes' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReportInstanceReasonCodes where
  toText (ReportInstanceReasonCodes' x) = x

instance Prelude.Hashable ReportInstanceReasonCodes

instance Prelude.NFData ReportInstanceReasonCodes

instance Prelude.ToByteString ReportInstanceReasonCodes

instance Prelude.ToQuery ReportInstanceReasonCodes

instance Prelude.ToHeader ReportInstanceReasonCodes

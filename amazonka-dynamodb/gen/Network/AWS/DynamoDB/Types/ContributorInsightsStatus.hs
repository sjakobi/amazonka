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
-- Module      : Network.AWS.DynamoDB.Types.ContributorInsightsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ContributorInsightsStatus
  ( ContributorInsightsStatus
      ( ..,
        ContributorInsightsStatusDISABLED,
        ContributorInsightsStatusDISABLING,
        ContributorInsightsStatusENABLED,
        ContributorInsightsStatusENABLING,
        ContributorInsightsStatusFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContributorInsightsStatus = ContributorInsightsStatus'
  { fromContributorInsightsStatus ::
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

pattern ContributorInsightsStatusDISABLED :: ContributorInsightsStatus
pattern ContributorInsightsStatusDISABLED = ContributorInsightsStatus' "DISABLED"

pattern ContributorInsightsStatusDISABLING :: ContributorInsightsStatus
pattern ContributorInsightsStatusDISABLING = ContributorInsightsStatus' "DISABLING"

pattern ContributorInsightsStatusENABLED :: ContributorInsightsStatus
pattern ContributorInsightsStatusENABLED = ContributorInsightsStatus' "ENABLED"

pattern ContributorInsightsStatusENABLING :: ContributorInsightsStatus
pattern ContributorInsightsStatusENABLING = ContributorInsightsStatus' "ENABLING"

pattern ContributorInsightsStatusFAILED :: ContributorInsightsStatus
pattern ContributorInsightsStatusFAILED = ContributorInsightsStatus' "FAILED"

{-# COMPLETE
  ContributorInsightsStatusDISABLED,
  ContributorInsightsStatusDISABLING,
  ContributorInsightsStatusENABLED,
  ContributorInsightsStatusENABLING,
  ContributorInsightsStatusFAILED,
  ContributorInsightsStatus'
  #-}

instance Prelude.FromText ContributorInsightsStatus where
  parser = ContributorInsightsStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContributorInsightsStatus where
  toText (ContributorInsightsStatus' x) = x

instance Prelude.Hashable ContributorInsightsStatus

instance Prelude.NFData ContributorInsightsStatus

instance Prelude.ToByteString ContributorInsightsStatus

instance Prelude.ToQuery ContributorInsightsStatus

instance Prelude.ToHeader ContributorInsightsStatus

instance Prelude.FromJSON ContributorInsightsStatus where
  parseJSON = Prelude.parseJSONText "ContributorInsightsStatus"

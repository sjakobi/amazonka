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
-- Module      : Network.AWS.GuardDuty.Types.FindingPublishingFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.FindingPublishingFrequency
  ( FindingPublishingFrequency
      ( ..,
        FindingPublishingFrequencyFIFTEENMINUTES,
        FindingPublishingFrequencyONEHOUR,
        FindingPublishingFrequencySIXHOURS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FindingPublishingFrequency = FindingPublishingFrequency'
  { fromFindingPublishingFrequency ::
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

pattern FindingPublishingFrequencyFIFTEENMINUTES :: FindingPublishingFrequency
pattern FindingPublishingFrequencyFIFTEENMINUTES = FindingPublishingFrequency' "FIFTEEN_MINUTES"

pattern FindingPublishingFrequencyONEHOUR :: FindingPublishingFrequency
pattern FindingPublishingFrequencyONEHOUR = FindingPublishingFrequency' "ONE_HOUR"

pattern FindingPublishingFrequencySIXHOURS :: FindingPublishingFrequency
pattern FindingPublishingFrequencySIXHOURS = FindingPublishingFrequency' "SIX_HOURS"

{-# COMPLETE
  FindingPublishingFrequencyFIFTEENMINUTES,
  FindingPublishingFrequencyONEHOUR,
  FindingPublishingFrequencySIXHOURS,
  FindingPublishingFrequency'
  #-}

instance Prelude.FromText FindingPublishingFrequency where
  parser = FindingPublishingFrequency' Prelude.<$> Prelude.takeText

instance Prelude.ToText FindingPublishingFrequency where
  toText (FindingPublishingFrequency' x) = x

instance Prelude.Hashable FindingPublishingFrequency

instance Prelude.NFData FindingPublishingFrequency

instance Prelude.ToByteString FindingPublishingFrequency

instance Prelude.ToQuery FindingPublishingFrequency

instance Prelude.ToHeader FindingPublishingFrequency

instance Prelude.ToJSON FindingPublishingFrequency where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FindingPublishingFrequency where
  parseJSON = Prelude.parseJSONText "FindingPublishingFrequency"

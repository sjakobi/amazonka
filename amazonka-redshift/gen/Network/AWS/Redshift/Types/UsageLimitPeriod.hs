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
-- Module      : Network.AWS.Redshift.Types.UsageLimitPeriod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.UsageLimitPeriod
  ( UsageLimitPeriod
      ( ..,
        UsageLimitPeriodDaily,
        UsageLimitPeriodMonthly,
        UsageLimitPeriodWeekly
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype UsageLimitPeriod = UsageLimitPeriod'
  { fromUsageLimitPeriod ::
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

pattern UsageLimitPeriodDaily :: UsageLimitPeriod
pattern UsageLimitPeriodDaily = UsageLimitPeriod' "daily"

pattern UsageLimitPeriodMonthly :: UsageLimitPeriod
pattern UsageLimitPeriodMonthly = UsageLimitPeriod' "monthly"

pattern UsageLimitPeriodWeekly :: UsageLimitPeriod
pattern UsageLimitPeriodWeekly = UsageLimitPeriod' "weekly"

{-# COMPLETE
  UsageLimitPeriodDaily,
  UsageLimitPeriodMonthly,
  UsageLimitPeriodWeekly,
  UsageLimitPeriod'
  #-}

instance Prelude.FromText UsageLimitPeriod where
  parser = UsageLimitPeriod' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsageLimitPeriod where
  toText (UsageLimitPeriod' x) = x

instance Prelude.Hashable UsageLimitPeriod

instance Prelude.NFData UsageLimitPeriod

instance Prelude.ToByteString UsageLimitPeriod

instance Prelude.ToQuery UsageLimitPeriod

instance Prelude.ToHeader UsageLimitPeriod

instance Prelude.FromXML UsageLimitPeriod where
  parseXML = Prelude.parseXMLText "UsageLimitPeriod"

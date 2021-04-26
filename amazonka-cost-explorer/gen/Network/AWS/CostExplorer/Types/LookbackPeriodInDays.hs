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
-- Module      : Network.AWS.CostExplorer.Types.LookbackPeriodInDays
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.LookbackPeriodInDays
  ( LookbackPeriodInDays
      ( ..,
        LookbackPeriodInDaysSEVENDAYS,
        LookbackPeriodInDaysSIXTYDAYS,
        LookbackPeriodInDaysTHIRTYDAYS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LookbackPeriodInDays = LookbackPeriodInDays'
  { fromLookbackPeriodInDays ::
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

pattern LookbackPeriodInDaysSEVENDAYS :: LookbackPeriodInDays
pattern LookbackPeriodInDaysSEVENDAYS = LookbackPeriodInDays' "SEVEN_DAYS"

pattern LookbackPeriodInDaysSIXTYDAYS :: LookbackPeriodInDays
pattern LookbackPeriodInDaysSIXTYDAYS = LookbackPeriodInDays' "SIXTY_DAYS"

pattern LookbackPeriodInDaysTHIRTYDAYS :: LookbackPeriodInDays
pattern LookbackPeriodInDaysTHIRTYDAYS = LookbackPeriodInDays' "THIRTY_DAYS"

{-# COMPLETE
  LookbackPeriodInDaysSEVENDAYS,
  LookbackPeriodInDaysSIXTYDAYS,
  LookbackPeriodInDaysTHIRTYDAYS,
  LookbackPeriodInDays'
  #-}

instance Prelude.FromText LookbackPeriodInDays where
  parser = LookbackPeriodInDays' Prelude.<$> Prelude.takeText

instance Prelude.ToText LookbackPeriodInDays where
  toText (LookbackPeriodInDays' x) = x

instance Prelude.Hashable LookbackPeriodInDays

instance Prelude.NFData LookbackPeriodInDays

instance Prelude.ToByteString LookbackPeriodInDays

instance Prelude.ToQuery LookbackPeriodInDays

instance Prelude.ToHeader LookbackPeriodInDays

instance Prelude.ToJSON LookbackPeriodInDays where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LookbackPeriodInDays where
  parseJSON = Prelude.parseJSONText "LookbackPeriodInDays"

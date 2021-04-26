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
-- Module      : Network.AWS.Config.Types.MaximumExecutionFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.MaximumExecutionFrequency
  ( MaximumExecutionFrequency
      ( ..,
        MaximumExecutionFrequencyOneHour,
        MaximumExecutionFrequencySixHours,
        MaximumExecutionFrequencyThreeHours,
        MaximumExecutionFrequencyTwelveHours,
        MaximumExecutionFrequencyTwentyFourHours
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MaximumExecutionFrequency = MaximumExecutionFrequency'
  { fromMaximumExecutionFrequency ::
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

pattern MaximumExecutionFrequencyOneHour :: MaximumExecutionFrequency
pattern MaximumExecutionFrequencyOneHour = MaximumExecutionFrequency' "One_Hour"

pattern MaximumExecutionFrequencySixHours :: MaximumExecutionFrequency
pattern MaximumExecutionFrequencySixHours = MaximumExecutionFrequency' "Six_Hours"

pattern MaximumExecutionFrequencyThreeHours :: MaximumExecutionFrequency
pattern MaximumExecutionFrequencyThreeHours = MaximumExecutionFrequency' "Three_Hours"

pattern MaximumExecutionFrequencyTwelveHours :: MaximumExecutionFrequency
pattern MaximumExecutionFrequencyTwelveHours = MaximumExecutionFrequency' "Twelve_Hours"

pattern MaximumExecutionFrequencyTwentyFourHours :: MaximumExecutionFrequency
pattern MaximumExecutionFrequencyTwentyFourHours = MaximumExecutionFrequency' "TwentyFour_Hours"

{-# COMPLETE
  MaximumExecutionFrequencyOneHour,
  MaximumExecutionFrequencySixHours,
  MaximumExecutionFrequencyThreeHours,
  MaximumExecutionFrequencyTwelveHours,
  MaximumExecutionFrequencyTwentyFourHours,
  MaximumExecutionFrequency'
  #-}

instance Prelude.FromText MaximumExecutionFrequency where
  parser = MaximumExecutionFrequency' Prelude.<$> Prelude.takeText

instance Prelude.ToText MaximumExecutionFrequency where
  toText (MaximumExecutionFrequency' x) = x

instance Prelude.Hashable MaximumExecutionFrequency

instance Prelude.NFData MaximumExecutionFrequency

instance Prelude.ToByteString MaximumExecutionFrequency

instance Prelude.ToQuery MaximumExecutionFrequency

instance Prelude.ToHeader MaximumExecutionFrequency

instance Prelude.ToJSON MaximumExecutionFrequency where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MaximumExecutionFrequency where
  parseJSON = Prelude.parseJSONText "MaximumExecutionFrequency"

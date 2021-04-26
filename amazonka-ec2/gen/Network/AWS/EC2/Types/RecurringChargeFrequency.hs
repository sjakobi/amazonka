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
-- Module      : Network.AWS.EC2.Types.RecurringChargeFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RecurringChargeFrequency
  ( RecurringChargeFrequency
      ( ..,
        RecurringChargeFrequencyHourly
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype RecurringChargeFrequency = RecurringChargeFrequency'
  { fromRecurringChargeFrequency ::
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

pattern RecurringChargeFrequencyHourly :: RecurringChargeFrequency
pattern RecurringChargeFrequencyHourly = RecurringChargeFrequency' "Hourly"

{-# COMPLETE
  RecurringChargeFrequencyHourly,
  RecurringChargeFrequency'
  #-}

instance Prelude.FromText RecurringChargeFrequency where
  parser = RecurringChargeFrequency' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecurringChargeFrequency where
  toText (RecurringChargeFrequency' x) = x

instance Prelude.Hashable RecurringChargeFrequency

instance Prelude.NFData RecurringChargeFrequency

instance Prelude.ToByteString RecurringChargeFrequency

instance Prelude.ToQuery RecurringChargeFrequency

instance Prelude.ToHeader RecurringChargeFrequency

instance Prelude.FromXML RecurringChargeFrequency where
  parseXML = Prelude.parseXMLText "RecurringChargeFrequency"

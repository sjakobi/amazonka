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
-- Module      : Network.AWS.CostAndUsageReport.Types.TimeUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostAndUsageReport.Types.TimeUnit
  ( TimeUnit
      ( ..,
        TimeUnitDAILY,
        TimeUnitHOURLY,
        TimeUnitMONTHLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The length of time covered by the report.
newtype TimeUnit = TimeUnit'
  { fromTimeUnit ::
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

pattern TimeUnitDAILY :: TimeUnit
pattern TimeUnitDAILY = TimeUnit' "DAILY"

pattern TimeUnitHOURLY :: TimeUnit
pattern TimeUnitHOURLY = TimeUnit' "HOURLY"

pattern TimeUnitMONTHLY :: TimeUnit
pattern TimeUnitMONTHLY = TimeUnit' "MONTHLY"

{-# COMPLETE
  TimeUnitDAILY,
  TimeUnitHOURLY,
  TimeUnitMONTHLY,
  TimeUnit'
  #-}

instance Prelude.FromText TimeUnit where
  parser = TimeUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimeUnit where
  toText (TimeUnit' x) = x

instance Prelude.Hashable TimeUnit

instance Prelude.NFData TimeUnit

instance Prelude.ToByteString TimeUnit

instance Prelude.ToQuery TimeUnit

instance Prelude.ToHeader TimeUnit

instance Prelude.ToJSON TimeUnit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TimeUnit where
  parseJSON = Prelude.parseJSONText "TimeUnit"

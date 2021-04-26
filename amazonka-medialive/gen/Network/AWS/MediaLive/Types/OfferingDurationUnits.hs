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
-- Module      : Network.AWS.MediaLive.Types.OfferingDurationUnits
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.OfferingDurationUnits
  ( OfferingDurationUnits
      ( ..,
        OfferingDurationUnitsMONTHS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Units for duration, e.g. \'MONTHS\'
newtype OfferingDurationUnits = OfferingDurationUnits'
  { fromOfferingDurationUnits ::
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

pattern OfferingDurationUnitsMONTHS :: OfferingDurationUnits
pattern OfferingDurationUnitsMONTHS = OfferingDurationUnits' "MONTHS"

{-# COMPLETE
  OfferingDurationUnitsMONTHS,
  OfferingDurationUnits'
  #-}

instance Prelude.FromText OfferingDurationUnits where
  parser = OfferingDurationUnits' Prelude.<$> Prelude.takeText

instance Prelude.ToText OfferingDurationUnits where
  toText (OfferingDurationUnits' x) = x

instance Prelude.Hashable OfferingDurationUnits

instance Prelude.NFData OfferingDurationUnits

instance Prelude.ToByteString OfferingDurationUnits

instance Prelude.ToQuery OfferingDurationUnits

instance Prelude.ToHeader OfferingDurationUnits

instance Prelude.FromJSON OfferingDurationUnits where
  parseJSON = Prelude.parseJSONText "OfferingDurationUnits"

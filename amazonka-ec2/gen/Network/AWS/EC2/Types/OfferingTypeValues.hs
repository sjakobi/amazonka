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
-- Module      : Network.AWS.EC2.Types.OfferingTypeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.OfferingTypeValues
  ( OfferingTypeValues
      ( ..,
        OfferingTypeValuesAllUpfront,
        OfferingTypeValuesHeavyUtilization,
        OfferingTypeValuesLightUtilization,
        OfferingTypeValuesMediumUtilization,
        OfferingTypeValuesNoUpfront,
        OfferingTypeValuesPartialUpfront
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype OfferingTypeValues = OfferingTypeValues'
  { fromOfferingTypeValues ::
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

pattern OfferingTypeValuesAllUpfront :: OfferingTypeValues
pattern OfferingTypeValuesAllUpfront = OfferingTypeValues' "All Upfront"

pattern OfferingTypeValuesHeavyUtilization :: OfferingTypeValues
pattern OfferingTypeValuesHeavyUtilization = OfferingTypeValues' "Heavy Utilization"

pattern OfferingTypeValuesLightUtilization :: OfferingTypeValues
pattern OfferingTypeValuesLightUtilization = OfferingTypeValues' "Light Utilization"

pattern OfferingTypeValuesMediumUtilization :: OfferingTypeValues
pattern OfferingTypeValuesMediumUtilization = OfferingTypeValues' "Medium Utilization"

pattern OfferingTypeValuesNoUpfront :: OfferingTypeValues
pattern OfferingTypeValuesNoUpfront = OfferingTypeValues' "No Upfront"

pattern OfferingTypeValuesPartialUpfront :: OfferingTypeValues
pattern OfferingTypeValuesPartialUpfront = OfferingTypeValues' "Partial Upfront"

{-# COMPLETE
  OfferingTypeValuesAllUpfront,
  OfferingTypeValuesHeavyUtilization,
  OfferingTypeValuesLightUtilization,
  OfferingTypeValuesMediumUtilization,
  OfferingTypeValuesNoUpfront,
  OfferingTypeValuesPartialUpfront,
  OfferingTypeValues'
  #-}

instance Prelude.FromText OfferingTypeValues where
  parser = OfferingTypeValues' Prelude.<$> Prelude.takeText

instance Prelude.ToText OfferingTypeValues where
  toText (OfferingTypeValues' x) = x

instance Prelude.Hashable OfferingTypeValues

instance Prelude.NFData OfferingTypeValues

instance Prelude.ToByteString OfferingTypeValues

instance Prelude.ToQuery OfferingTypeValues

instance Prelude.ToHeader OfferingTypeValues

instance Prelude.FromXML OfferingTypeValues where
  parseXML = Prelude.parseXMLText "OfferingTypeValues"

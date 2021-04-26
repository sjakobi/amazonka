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
-- Module      : Network.AWS.AlexaBusiness.Types.Feature
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.Feature
  ( Feature
      ( ..,
        FeatureALL,
        FeatureBLUETOOTH,
        FeatureLISTS,
        FeatureNETWORKPROFILE,
        FeatureNOTIFICATIONS,
        FeatureSETTINGS,
        FeatureSKILLS,
        FeatureVOLUME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Feature = Feature'
  { fromFeature ::
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

pattern FeatureALL :: Feature
pattern FeatureALL = Feature' "ALL"

pattern FeatureBLUETOOTH :: Feature
pattern FeatureBLUETOOTH = Feature' "BLUETOOTH"

pattern FeatureLISTS :: Feature
pattern FeatureLISTS = Feature' "LISTS"

pattern FeatureNETWORKPROFILE :: Feature
pattern FeatureNETWORKPROFILE = Feature' "NETWORK_PROFILE"

pattern FeatureNOTIFICATIONS :: Feature
pattern FeatureNOTIFICATIONS = Feature' "NOTIFICATIONS"

pattern FeatureSETTINGS :: Feature
pattern FeatureSETTINGS = Feature' "SETTINGS"

pattern FeatureSKILLS :: Feature
pattern FeatureSKILLS = Feature' "SKILLS"

pattern FeatureVOLUME :: Feature
pattern FeatureVOLUME = Feature' "VOLUME"

{-# COMPLETE
  FeatureALL,
  FeatureBLUETOOTH,
  FeatureLISTS,
  FeatureNETWORKPROFILE,
  FeatureNOTIFICATIONS,
  FeatureSETTINGS,
  FeatureSKILLS,
  FeatureVOLUME,
  Feature'
  #-}

instance Prelude.FromText Feature where
  parser = Feature' Prelude.<$> Prelude.takeText

instance Prelude.ToText Feature where
  toText (Feature' x) = x

instance Prelude.Hashable Feature

instance Prelude.NFData Feature

instance Prelude.ToByteString Feature

instance Prelude.ToQuery Feature

instance Prelude.ToHeader Feature

instance Prelude.ToJSON Feature where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Feature where
  parseJSON = Prelude.parseJSONText "Feature"

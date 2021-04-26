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
-- Module      : Network.AWS.MediaLive.Types.Scte35DeviceRestrictions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35DeviceRestrictions
  ( Scte35DeviceRestrictions
      ( ..,
        Scte35DeviceRestrictionsNONE,
        Scte35DeviceRestrictionsRESTRICTGROUP0,
        Scte35DeviceRestrictionsRESTRICTGROUP1,
        Scte35DeviceRestrictionsRESTRICTGROUP2
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Corresponds to the device_restrictions parameter in a
-- segmentation_descriptor. If you include one of the \"restriction\" flags
-- then you must include all four of them.
newtype Scte35DeviceRestrictions = Scte35DeviceRestrictions'
  { fromScte35DeviceRestrictions ::
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

pattern Scte35DeviceRestrictionsNONE :: Scte35DeviceRestrictions
pattern Scte35DeviceRestrictionsNONE = Scte35DeviceRestrictions' "NONE"

pattern Scte35DeviceRestrictionsRESTRICTGROUP0 :: Scte35DeviceRestrictions
pattern Scte35DeviceRestrictionsRESTRICTGROUP0 = Scte35DeviceRestrictions' "RESTRICT_GROUP0"

pattern Scte35DeviceRestrictionsRESTRICTGROUP1 :: Scte35DeviceRestrictions
pattern Scte35DeviceRestrictionsRESTRICTGROUP1 = Scte35DeviceRestrictions' "RESTRICT_GROUP1"

pattern Scte35DeviceRestrictionsRESTRICTGROUP2 :: Scte35DeviceRestrictions
pattern Scte35DeviceRestrictionsRESTRICTGROUP2 = Scte35DeviceRestrictions' "RESTRICT_GROUP2"

{-# COMPLETE
  Scte35DeviceRestrictionsNONE,
  Scte35DeviceRestrictionsRESTRICTGROUP0,
  Scte35DeviceRestrictionsRESTRICTGROUP1,
  Scte35DeviceRestrictionsRESTRICTGROUP2,
  Scte35DeviceRestrictions'
  #-}

instance Prelude.FromText Scte35DeviceRestrictions where
  parser = Scte35DeviceRestrictions' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35DeviceRestrictions where
  toText (Scte35DeviceRestrictions' x) = x

instance Prelude.Hashable Scte35DeviceRestrictions

instance Prelude.NFData Scte35DeviceRestrictions

instance Prelude.ToByteString Scte35DeviceRestrictions

instance Prelude.ToQuery Scte35DeviceRestrictions

instance Prelude.ToHeader Scte35DeviceRestrictions

instance Prelude.ToJSON Scte35DeviceRestrictions where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35DeviceRestrictions where
  parseJSON = Prelude.parseJSONText "Scte35DeviceRestrictions"

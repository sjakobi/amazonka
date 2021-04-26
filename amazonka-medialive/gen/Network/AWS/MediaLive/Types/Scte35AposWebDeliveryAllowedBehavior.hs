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
-- Module      : Network.AWS.MediaLive.Types.Scte35AposWebDeliveryAllowedBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35AposWebDeliveryAllowedBehavior
  ( Scte35AposWebDeliveryAllowedBehavior
      ( ..,
        Scte35AposWebDeliveryAllowedBehaviorFOLLOW,
        Scte35AposWebDeliveryAllowedBehaviorIGNORE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Scte35 Apos Web Delivery Allowed Behavior
newtype Scte35AposWebDeliveryAllowedBehavior = Scte35AposWebDeliveryAllowedBehavior'
  { fromScte35AposWebDeliveryAllowedBehavior ::
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

pattern Scte35AposWebDeliveryAllowedBehaviorFOLLOW :: Scte35AposWebDeliveryAllowedBehavior
pattern Scte35AposWebDeliveryAllowedBehaviorFOLLOW = Scte35AposWebDeliveryAllowedBehavior' "FOLLOW"

pattern Scte35AposWebDeliveryAllowedBehaviorIGNORE :: Scte35AposWebDeliveryAllowedBehavior
pattern Scte35AposWebDeliveryAllowedBehaviorIGNORE = Scte35AposWebDeliveryAllowedBehavior' "IGNORE"

{-# COMPLETE
  Scte35AposWebDeliveryAllowedBehaviorFOLLOW,
  Scte35AposWebDeliveryAllowedBehaviorIGNORE,
  Scte35AposWebDeliveryAllowedBehavior'
  #-}

instance Prelude.FromText Scte35AposWebDeliveryAllowedBehavior where
  parser = Scte35AposWebDeliveryAllowedBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35AposWebDeliveryAllowedBehavior where
  toText (Scte35AposWebDeliveryAllowedBehavior' x) = x

instance Prelude.Hashable Scte35AposWebDeliveryAllowedBehavior

instance Prelude.NFData Scte35AposWebDeliveryAllowedBehavior

instance Prelude.ToByteString Scte35AposWebDeliveryAllowedBehavior

instance Prelude.ToQuery Scte35AposWebDeliveryAllowedBehavior

instance Prelude.ToHeader Scte35AposWebDeliveryAllowedBehavior

instance Prelude.ToJSON Scte35AposWebDeliveryAllowedBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35AposWebDeliveryAllowedBehavior where
  parseJSON = Prelude.parseJSONText "Scte35AposWebDeliveryAllowedBehavior"

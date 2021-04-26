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
-- Module      : Network.AWS.MediaLive.Types.Scte35SpliceInsertWebDeliveryAllowedBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35SpliceInsertWebDeliveryAllowedBehavior
  ( Scte35SpliceInsertWebDeliveryAllowedBehavior
      ( ..,
        Scte35SpliceInsertWebDeliveryAllowedBehaviorFOLLOW,
        Scte35SpliceInsertWebDeliveryAllowedBehaviorIGNORE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Scte35 Splice Insert Web Delivery Allowed Behavior
newtype Scte35SpliceInsertWebDeliveryAllowedBehavior = Scte35SpliceInsertWebDeliveryAllowedBehavior'
  { fromScte35SpliceInsertWebDeliveryAllowedBehavior ::
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

pattern Scte35SpliceInsertWebDeliveryAllowedBehaviorFOLLOW :: Scte35SpliceInsertWebDeliveryAllowedBehavior
pattern Scte35SpliceInsertWebDeliveryAllowedBehaviorFOLLOW = Scte35SpliceInsertWebDeliveryAllowedBehavior' "FOLLOW"

pattern Scte35SpliceInsertWebDeliveryAllowedBehaviorIGNORE :: Scte35SpliceInsertWebDeliveryAllowedBehavior
pattern Scte35SpliceInsertWebDeliveryAllowedBehaviorIGNORE = Scte35SpliceInsertWebDeliveryAllowedBehavior' "IGNORE"

{-# COMPLETE
  Scte35SpliceInsertWebDeliveryAllowedBehaviorFOLLOW,
  Scte35SpliceInsertWebDeliveryAllowedBehaviorIGNORE,
  Scte35SpliceInsertWebDeliveryAllowedBehavior'
  #-}

instance Prelude.FromText Scte35SpliceInsertWebDeliveryAllowedBehavior where
  parser = Scte35SpliceInsertWebDeliveryAllowedBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35SpliceInsertWebDeliveryAllowedBehavior where
  toText (Scte35SpliceInsertWebDeliveryAllowedBehavior' x) = x

instance Prelude.Hashable Scte35SpliceInsertWebDeliveryAllowedBehavior

instance Prelude.NFData Scte35SpliceInsertWebDeliveryAllowedBehavior

instance Prelude.ToByteString Scte35SpliceInsertWebDeliveryAllowedBehavior

instance Prelude.ToQuery Scte35SpliceInsertWebDeliveryAllowedBehavior

instance Prelude.ToHeader Scte35SpliceInsertWebDeliveryAllowedBehavior

instance Prelude.ToJSON Scte35SpliceInsertWebDeliveryAllowedBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35SpliceInsertWebDeliveryAllowedBehavior where
  parseJSON = Prelude.parseJSONText "Scte35SpliceInsertWebDeliveryAllowedBehavior"

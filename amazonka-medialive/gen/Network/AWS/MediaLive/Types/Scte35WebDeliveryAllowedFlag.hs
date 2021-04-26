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
-- Module      : Network.AWS.MediaLive.Types.Scte35WebDeliveryAllowedFlag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte35WebDeliveryAllowedFlag
  ( Scte35WebDeliveryAllowedFlag
      ( ..,
        Scte35WebDeliveryAllowedFlagWEBDELIVERYALLOWED,
        Scte35WebDeliveryAllowedFlagWEBDELIVERYNOTALLOWED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Corresponds to the web_delivery_allowed_flag parameter. A value of
-- WEB_DELIVERY_NOT_ALLOWED corresponds to 0 (false) in the SCTE-35
-- specification. If you include one of the \"restriction\" flags then you
-- must include all four of them.
newtype Scte35WebDeliveryAllowedFlag = Scte35WebDeliveryAllowedFlag'
  { fromScte35WebDeliveryAllowedFlag ::
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

pattern Scte35WebDeliveryAllowedFlagWEBDELIVERYALLOWED :: Scte35WebDeliveryAllowedFlag
pattern Scte35WebDeliveryAllowedFlagWEBDELIVERYALLOWED = Scte35WebDeliveryAllowedFlag' "WEB_DELIVERY_ALLOWED"

pattern Scte35WebDeliveryAllowedFlagWEBDELIVERYNOTALLOWED :: Scte35WebDeliveryAllowedFlag
pattern Scte35WebDeliveryAllowedFlagWEBDELIVERYNOTALLOWED = Scte35WebDeliveryAllowedFlag' "WEB_DELIVERY_NOT_ALLOWED"

{-# COMPLETE
  Scte35WebDeliveryAllowedFlagWEBDELIVERYALLOWED,
  Scte35WebDeliveryAllowedFlagWEBDELIVERYNOTALLOWED,
  Scte35WebDeliveryAllowedFlag'
  #-}

instance Prelude.FromText Scte35WebDeliveryAllowedFlag where
  parser = Scte35WebDeliveryAllowedFlag' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte35WebDeliveryAllowedFlag where
  toText (Scte35WebDeliveryAllowedFlag' x) = x

instance Prelude.Hashable Scte35WebDeliveryAllowedFlag

instance Prelude.NFData Scte35WebDeliveryAllowedFlag

instance Prelude.ToByteString Scte35WebDeliveryAllowedFlag

instance Prelude.ToQuery Scte35WebDeliveryAllowedFlag

instance Prelude.ToHeader Scte35WebDeliveryAllowedFlag

instance Prelude.ToJSON Scte35WebDeliveryAllowedFlag where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte35WebDeliveryAllowedFlag where
  parseJSON = Prelude.parseJSONText "Scte35WebDeliveryAllowedFlag"

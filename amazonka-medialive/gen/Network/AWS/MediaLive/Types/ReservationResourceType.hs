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
-- Module      : Network.AWS.MediaLive.Types.ReservationResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ReservationResourceType
  ( ReservationResourceType
      ( ..,
        ReservationResourceTypeCHANNEL,
        ReservationResourceTypeINPUT,
        ReservationResourceTypeMULTIPLEX,
        ReservationResourceTypeOUTPUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Resource type, \'INPUT\', \'OUTPUT\', \'MULTIPLEX\', or \'CHANNEL\'
newtype ReservationResourceType = ReservationResourceType'
  { fromReservationResourceType ::
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

pattern ReservationResourceTypeCHANNEL :: ReservationResourceType
pattern ReservationResourceTypeCHANNEL = ReservationResourceType' "CHANNEL"

pattern ReservationResourceTypeINPUT :: ReservationResourceType
pattern ReservationResourceTypeINPUT = ReservationResourceType' "INPUT"

pattern ReservationResourceTypeMULTIPLEX :: ReservationResourceType
pattern ReservationResourceTypeMULTIPLEX = ReservationResourceType' "MULTIPLEX"

pattern ReservationResourceTypeOUTPUT :: ReservationResourceType
pattern ReservationResourceTypeOUTPUT = ReservationResourceType' "OUTPUT"

{-# COMPLETE
  ReservationResourceTypeCHANNEL,
  ReservationResourceTypeINPUT,
  ReservationResourceTypeMULTIPLEX,
  ReservationResourceTypeOUTPUT,
  ReservationResourceType'
  #-}

instance Prelude.FromText ReservationResourceType where
  parser = ReservationResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservationResourceType where
  toText (ReservationResourceType' x) = x

instance Prelude.Hashable ReservationResourceType

instance Prelude.NFData ReservationResourceType

instance Prelude.ToByteString ReservationResourceType

instance Prelude.ToQuery ReservationResourceType

instance Prelude.ToHeader ReservationResourceType

instance Prelude.FromJSON ReservationResourceType where
  parseJSON = Prelude.parseJSONText "ReservationResourceType"

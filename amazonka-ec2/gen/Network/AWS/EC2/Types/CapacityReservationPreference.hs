{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CapacityReservationPreference
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationPreference
  ( CapacityReservationPreference
      ( ..,
        None,
        Open
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data CapacityReservationPreference
  = CapacityReservationPreference'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern None :: CapacityReservationPreference
pattern None = CapacityReservationPreference' "none"

pattern Open :: CapacityReservationPreference
pattern Open = CapacityReservationPreference' "open"

{-# COMPLETE
  None,
  Open,
  CapacityReservationPreference'
  #-}

instance FromText CapacityReservationPreference where
  parser = (CapacityReservationPreference' . mk) <$> takeText

instance ToText CapacityReservationPreference where
  toText (CapacityReservationPreference' ci) = original ci

instance Hashable CapacityReservationPreference

instance NFData CapacityReservationPreference

instance ToByteString CapacityReservationPreference

instance ToQuery CapacityReservationPreference

instance ToHeader CapacityReservationPreference

instance FromXML CapacityReservationPreference where
  parseXML = parseXMLText "CapacityReservationPreference"

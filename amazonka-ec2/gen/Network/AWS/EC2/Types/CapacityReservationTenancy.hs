{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CapacityReservationTenancy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationTenancy
  ( CapacityReservationTenancy
      ( ..,
        CRTDedicated,
        CRTDefault
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data CapacityReservationTenancy
  = CapacityReservationTenancy'
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

pattern CRTDedicated :: CapacityReservationTenancy
pattern CRTDedicated = CapacityReservationTenancy' "dedicated"

pattern CRTDefault :: CapacityReservationTenancy
pattern CRTDefault = CapacityReservationTenancy' "default"

{-# COMPLETE
  CRTDedicated,
  CRTDefault,
  CapacityReservationTenancy'
  #-}

instance FromText CapacityReservationTenancy where
  parser = (CapacityReservationTenancy' . mk) <$> takeText

instance ToText CapacityReservationTenancy where
  toText (CapacityReservationTenancy' ci) = original ci

instance Hashable CapacityReservationTenancy

instance NFData CapacityReservationTenancy

instance ToByteString CapacityReservationTenancy

instance ToQuery CapacityReservationTenancy

instance ToHeader CapacityReservationTenancy

instance FromXML CapacityReservationTenancy where
  parseXML = parseXMLText "CapacityReservationTenancy"

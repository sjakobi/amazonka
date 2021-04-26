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
-- Module      : Network.AWS.EC2.Types.CapacityReservationTenancy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CapacityReservationTenancy
  ( CapacityReservationTenancy
      ( ..,
        CapacityReservationTenancyDedicated,
        CapacityReservationTenancyDefault
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype CapacityReservationTenancy = CapacityReservationTenancy'
  { fromCapacityReservationTenancy ::
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

pattern CapacityReservationTenancyDedicated :: CapacityReservationTenancy
pattern CapacityReservationTenancyDedicated = CapacityReservationTenancy' "dedicated"

pattern CapacityReservationTenancyDefault :: CapacityReservationTenancy
pattern CapacityReservationTenancyDefault = CapacityReservationTenancy' "default"

{-# COMPLETE
  CapacityReservationTenancyDedicated,
  CapacityReservationTenancyDefault,
  CapacityReservationTenancy'
  #-}

instance Prelude.FromText CapacityReservationTenancy where
  parser = CapacityReservationTenancy' Prelude.<$> Prelude.takeText

instance Prelude.ToText CapacityReservationTenancy where
  toText (CapacityReservationTenancy' x) = x

instance Prelude.Hashable CapacityReservationTenancy

instance Prelude.NFData CapacityReservationTenancy

instance Prelude.ToByteString CapacityReservationTenancy

instance Prelude.ToQuery CapacityReservationTenancy

instance Prelude.ToHeader CapacityReservationTenancy

instance Prelude.FromXML CapacityReservationTenancy where
  parseXML = Prelude.parseXMLText "CapacityReservationTenancy"

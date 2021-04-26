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
-- Module      : Network.AWS.EC2.Types.FleetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetType
  ( FleetType
      ( ..,
        FleetTypeInstant,
        FleetTypeMaintain,
        FleetTypeRequest
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetType = FleetType'
  { fromFleetType ::
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

pattern FleetTypeInstant :: FleetType
pattern FleetTypeInstant = FleetType' "instant"

pattern FleetTypeMaintain :: FleetType
pattern FleetTypeMaintain = FleetType' "maintain"

pattern FleetTypeRequest :: FleetType
pattern FleetTypeRequest = FleetType' "request"

{-# COMPLETE
  FleetTypeInstant,
  FleetTypeMaintain,
  FleetTypeRequest,
  FleetType'
  #-}

instance Prelude.FromText FleetType where
  parser = FleetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetType where
  toText (FleetType' x) = x

instance Prelude.Hashable FleetType

instance Prelude.NFData FleetType

instance Prelude.ToByteString FleetType

instance Prelude.ToQuery FleetType

instance Prelude.ToHeader FleetType

instance Prelude.FromXML FleetType where
  parseXML = Prelude.parseXMLText "FleetType"

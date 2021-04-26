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
-- Module      : Network.AWS.EC2.Types.FleetEventType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetEventType
  ( FleetEventType
      ( ..,
        FleetEventTypeFETFleetChange,
        FleetEventTypeFETInstanceChange,
        FleetEventTypeFETServiceError
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetEventType = FleetEventType'
  { fromFleetEventType ::
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

pattern FleetEventTypeFETFleetChange :: FleetEventType
pattern FleetEventTypeFETFleetChange = FleetEventType' "fleet-change"

pattern FleetEventTypeFETInstanceChange :: FleetEventType
pattern FleetEventTypeFETInstanceChange = FleetEventType' "instance-change"

pattern FleetEventTypeFETServiceError :: FleetEventType
pattern FleetEventTypeFETServiceError = FleetEventType' "service-error"

{-# COMPLETE
  FleetEventTypeFETFleetChange,
  FleetEventTypeFETInstanceChange,
  FleetEventTypeFETServiceError,
  FleetEventType'
  #-}

instance Prelude.FromText FleetEventType where
  parser = FleetEventType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetEventType where
  toText (FleetEventType' x) = x

instance Prelude.Hashable FleetEventType

instance Prelude.NFData FleetEventType

instance Prelude.ToByteString FleetEventType

instance Prelude.ToQuery FleetEventType

instance Prelude.ToHeader FleetEventType

instance Prelude.FromXML FleetEventType where
  parseXML = Prelude.parseXMLText "FleetEventType"

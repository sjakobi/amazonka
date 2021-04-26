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
-- Module      : Network.AWS.EC2.Types.FleetStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.FleetStateCode
  ( FleetStateCode
      ( ..,
        FleetStateCodeActive,
        FleetStateCodeDeleted,
        FleetStateCodeDeletedRunning,
        FleetStateCodeDeletedTerminating,
        FleetStateCodeFailed,
        FleetStateCodeModifying,
        FleetStateCodeSubmitted
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype FleetStateCode = FleetStateCode'
  { fromFleetStateCode ::
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

pattern FleetStateCodeActive :: FleetStateCode
pattern FleetStateCodeActive = FleetStateCode' "active"

pattern FleetStateCodeDeleted :: FleetStateCode
pattern FleetStateCodeDeleted = FleetStateCode' "deleted"

pattern FleetStateCodeDeletedRunning :: FleetStateCode
pattern FleetStateCodeDeletedRunning = FleetStateCode' "deleted_running"

pattern FleetStateCodeDeletedTerminating :: FleetStateCode
pattern FleetStateCodeDeletedTerminating = FleetStateCode' "deleted_terminating"

pattern FleetStateCodeFailed :: FleetStateCode
pattern FleetStateCodeFailed = FleetStateCode' "failed"

pattern FleetStateCodeModifying :: FleetStateCode
pattern FleetStateCodeModifying = FleetStateCode' "modifying"

pattern FleetStateCodeSubmitted :: FleetStateCode
pattern FleetStateCodeSubmitted = FleetStateCode' "submitted"

{-# COMPLETE
  FleetStateCodeActive,
  FleetStateCodeDeleted,
  FleetStateCodeDeletedRunning,
  FleetStateCodeDeletedTerminating,
  FleetStateCodeFailed,
  FleetStateCodeModifying,
  FleetStateCodeSubmitted,
  FleetStateCode'
  #-}

instance Prelude.FromText FleetStateCode where
  parser = FleetStateCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText FleetStateCode where
  toText (FleetStateCode' x) = x

instance Prelude.Hashable FleetStateCode

instance Prelude.NFData FleetStateCode

instance Prelude.ToByteString FleetStateCode

instance Prelude.ToQuery FleetStateCode

instance Prelude.ToHeader FleetStateCode

instance Prelude.FromXML FleetStateCode where
  parseXML = Prelude.parseXMLText "FleetStateCode"

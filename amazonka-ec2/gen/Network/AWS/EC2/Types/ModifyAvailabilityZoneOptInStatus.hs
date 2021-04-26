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
-- Module      : Network.AWS.EC2.Types.ModifyAvailabilityZoneOptInStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ModifyAvailabilityZoneOptInStatus
  ( ModifyAvailabilityZoneOptInStatus
      ( ..,
        ModifyAvailabilityZoneOptInStatusNotOptedIn,
        ModifyAvailabilityZoneOptInStatusOptedIn
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ModifyAvailabilityZoneOptInStatus = ModifyAvailabilityZoneOptInStatus'
  { fromModifyAvailabilityZoneOptInStatus ::
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

pattern ModifyAvailabilityZoneOptInStatusNotOptedIn :: ModifyAvailabilityZoneOptInStatus
pattern ModifyAvailabilityZoneOptInStatusNotOptedIn = ModifyAvailabilityZoneOptInStatus' "not-opted-in"

pattern ModifyAvailabilityZoneOptInStatusOptedIn :: ModifyAvailabilityZoneOptInStatus
pattern ModifyAvailabilityZoneOptInStatusOptedIn = ModifyAvailabilityZoneOptInStatus' "opted-in"

{-# COMPLETE
  ModifyAvailabilityZoneOptInStatusNotOptedIn,
  ModifyAvailabilityZoneOptInStatusOptedIn,
  ModifyAvailabilityZoneOptInStatus'
  #-}

instance Prelude.FromText ModifyAvailabilityZoneOptInStatus where
  parser = ModifyAvailabilityZoneOptInStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ModifyAvailabilityZoneOptInStatus where
  toText (ModifyAvailabilityZoneOptInStatus' x) = x

instance Prelude.Hashable ModifyAvailabilityZoneOptInStatus

instance Prelude.NFData ModifyAvailabilityZoneOptInStatus

instance Prelude.ToByteString ModifyAvailabilityZoneOptInStatus

instance Prelude.ToQuery ModifyAvailabilityZoneOptInStatus

instance Prelude.ToHeader ModifyAvailabilityZoneOptInStatus

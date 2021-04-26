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
-- Module      : Network.AWS.MediaLive.Types.DeviceUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.DeviceUpdateStatus
  ( DeviceUpdateStatus
      ( ..,
        DeviceUpdateStatusNOTUPTODATE,
        DeviceUpdateStatusUPTODATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The status of software on the input device.
newtype DeviceUpdateStatus = DeviceUpdateStatus'
  { fromDeviceUpdateStatus ::
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

pattern DeviceUpdateStatusNOTUPTODATE :: DeviceUpdateStatus
pattern DeviceUpdateStatusNOTUPTODATE = DeviceUpdateStatus' "NOT_UP_TO_DATE"

pattern DeviceUpdateStatusUPTODATE :: DeviceUpdateStatus
pattern DeviceUpdateStatusUPTODATE = DeviceUpdateStatus' "UP_TO_DATE"

{-# COMPLETE
  DeviceUpdateStatusNOTUPTODATE,
  DeviceUpdateStatusUPTODATE,
  DeviceUpdateStatus'
  #-}

instance Prelude.FromText DeviceUpdateStatus where
  parser = DeviceUpdateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeviceUpdateStatus where
  toText (DeviceUpdateStatus' x) = x

instance Prelude.Hashable DeviceUpdateStatus

instance Prelude.NFData DeviceUpdateStatus

instance Prelude.ToByteString DeviceUpdateStatus

instance Prelude.ToQuery DeviceUpdateStatus

instance Prelude.ToHeader DeviceUpdateStatus

instance Prelude.FromJSON DeviceUpdateStatus where
  parseJSON = Prelude.parseJSONText "DeviceUpdateStatus"

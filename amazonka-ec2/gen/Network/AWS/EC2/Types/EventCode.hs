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
-- Module      : Network.AWS.EC2.Types.EventCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.EventCode
  ( EventCode
      ( ..,
        EventCodeInstanceReboot,
        EventCodeInstanceRetirement,
        EventCodeInstanceStop,
        EventCodeSystemMaintenance,
        EventCodeSystemReboot
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype EventCode = EventCode'
  { fromEventCode ::
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

pattern EventCodeInstanceReboot :: EventCode
pattern EventCodeInstanceReboot = EventCode' "instance-reboot"

pattern EventCodeInstanceRetirement :: EventCode
pattern EventCodeInstanceRetirement = EventCode' "instance-retirement"

pattern EventCodeInstanceStop :: EventCode
pattern EventCodeInstanceStop = EventCode' "instance-stop"

pattern EventCodeSystemMaintenance :: EventCode
pattern EventCodeSystemMaintenance = EventCode' "system-maintenance"

pattern EventCodeSystemReboot :: EventCode
pattern EventCodeSystemReboot = EventCode' "system-reboot"

{-# COMPLETE
  EventCodeInstanceReboot,
  EventCodeInstanceRetirement,
  EventCodeInstanceStop,
  EventCodeSystemMaintenance,
  EventCodeSystemReboot,
  EventCode'
  #-}

instance Prelude.FromText EventCode where
  parser = EventCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventCode where
  toText (EventCode' x) = x

instance Prelude.Hashable EventCode

instance Prelude.NFData EventCode

instance Prelude.ToByteString EventCode

instance Prelude.ToQuery EventCode

instance Prelude.ToHeader EventCode

instance Prelude.FromXML EventCode where
  parseXML = Prelude.parseXMLText "EventCode"

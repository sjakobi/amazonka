{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        InstanceReboot,
        InstanceRetirement,
        InstanceStop,
        SystemMaintenance,
        SystemReboot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data EventCode = EventCode' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern InstanceReboot :: EventCode
pattern InstanceReboot = EventCode' "instance-reboot"

pattern InstanceRetirement :: EventCode
pattern InstanceRetirement = EventCode' "instance-retirement"

pattern InstanceStop :: EventCode
pattern InstanceStop = EventCode' "instance-stop"

pattern SystemMaintenance :: EventCode
pattern SystemMaintenance = EventCode' "system-maintenance"

pattern SystemReboot :: EventCode
pattern SystemReboot = EventCode' "system-reboot"

{-# COMPLETE
  InstanceReboot,
  InstanceRetirement,
  InstanceStop,
  SystemMaintenance,
  SystemReboot,
  EventCode'
  #-}

instance FromText EventCode where
  parser = (EventCode' . mk) <$> takeText

instance ToText EventCode where
  toText (EventCode' ci) = original ci

instance Hashable EventCode

instance NFData EventCode

instance ToByteString EventCode

instance ToQuery EventCode

instance ToHeader EventCode

instance FromXML EventCode where
  parseXML = parseXMLText "EventCode"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        FETFleetChange,
        FETInstanceChange,
        FETServiceError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data FleetEventType = FleetEventType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FETFleetChange :: FleetEventType
pattern FETFleetChange = FleetEventType' "fleet-change"

pattern FETInstanceChange :: FleetEventType
pattern FETInstanceChange = FleetEventType' "instance-change"

pattern FETServiceError :: FleetEventType
pattern FETServiceError = FleetEventType' "service-error"

{-# COMPLETE
  FETFleetChange,
  FETInstanceChange,
  FETServiceError,
  FleetEventType'
  #-}

instance FromText FleetEventType where
  parser = (FleetEventType' . mk) <$> takeText

instance ToText FleetEventType where
  toText (FleetEventType' ci) = original ci

instance Hashable FleetEventType

instance NFData FleetEventType

instance ToByteString FleetEventType

instance ToQuery FleetEventType

instance ToHeader FleetEventType

instance FromXML FleetEventType where
  parseXML = parseXMLText "FleetEventType"

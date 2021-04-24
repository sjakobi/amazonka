{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ContainerServicePowerName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServicePowerName
  ( ContainerServicePowerName
      ( ..,
        Large,
        Medium,
        Micro,
        Nano,
        Small,
        XLarge
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerServicePowerName
  = ContainerServicePowerName'
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

pattern Large :: ContainerServicePowerName
pattern Large = ContainerServicePowerName' "large"

pattern Medium :: ContainerServicePowerName
pattern Medium = ContainerServicePowerName' "medium"

pattern Micro :: ContainerServicePowerName
pattern Micro = ContainerServicePowerName' "micro"

pattern Nano :: ContainerServicePowerName
pattern Nano = ContainerServicePowerName' "nano"

pattern Small :: ContainerServicePowerName
pattern Small = ContainerServicePowerName' "small"

pattern XLarge :: ContainerServicePowerName
pattern XLarge = ContainerServicePowerName' "xlarge"

{-# COMPLETE
  Large,
  Medium,
  Micro,
  Nano,
  Small,
  XLarge,
  ContainerServicePowerName'
  #-}

instance FromText ContainerServicePowerName where
  parser = (ContainerServicePowerName' . mk) <$> takeText

instance ToText ContainerServicePowerName where
  toText (ContainerServicePowerName' ci) = original ci

instance Hashable ContainerServicePowerName

instance NFData ContainerServicePowerName

instance ToByteString ContainerServicePowerName

instance ToQuery ContainerServicePowerName

instance ToHeader ContainerServicePowerName

instance ToJSON ContainerServicePowerName where
  toJSON = toJSONText

instance FromJSON ContainerServicePowerName where
  parseJSON = parseJSONText "ContainerServicePowerName"

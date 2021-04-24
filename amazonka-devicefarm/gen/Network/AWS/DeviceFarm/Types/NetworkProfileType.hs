{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.NetworkProfileType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.NetworkProfileType
  ( NetworkProfileType
      ( ..,
        Curated,
        Private
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NetworkProfileType
  = NetworkProfileType'
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

pattern Curated :: NetworkProfileType
pattern Curated = NetworkProfileType' "CURATED"

pattern Private :: NetworkProfileType
pattern Private = NetworkProfileType' "PRIVATE"

{-# COMPLETE
  Curated,
  Private,
  NetworkProfileType'
  #-}

instance FromText NetworkProfileType where
  parser = (NetworkProfileType' . mk) <$> takeText

instance ToText NetworkProfileType where
  toText (NetworkProfileType' ci) = original ci

instance Hashable NetworkProfileType

instance NFData NetworkProfileType

instance ToByteString NetworkProfileType

instance ToQuery NetworkProfileType

instance ToHeader NetworkProfileType

instance ToJSON NetworkProfileType where
  toJSON = toJSONText

instance FromJSON NetworkProfileType where
  parseJSON = parseJSONText "NetworkProfileType"

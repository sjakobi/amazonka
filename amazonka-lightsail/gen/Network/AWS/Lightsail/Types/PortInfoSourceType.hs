{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.PortInfoSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.PortInfoSourceType
  ( PortInfoSourceType
      ( ..,
        PISTClosed,
        PISTDefault,
        PISTInstance,
        PISTNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PortInfoSourceType
  = PortInfoSourceType'
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

pattern PISTClosed :: PortInfoSourceType
pattern PISTClosed = PortInfoSourceType' "CLOSED"

pattern PISTDefault :: PortInfoSourceType
pattern PISTDefault = PortInfoSourceType' "DEFAULT"

pattern PISTInstance :: PortInfoSourceType
pattern PISTInstance = PortInfoSourceType' "INSTANCE"

pattern PISTNone :: PortInfoSourceType
pattern PISTNone = PortInfoSourceType' "NONE"

{-# COMPLETE
  PISTClosed,
  PISTDefault,
  PISTInstance,
  PISTNone,
  PortInfoSourceType'
  #-}

instance FromText PortInfoSourceType where
  parser = (PortInfoSourceType' . mk) <$> takeText

instance ToText PortInfoSourceType where
  toText (PortInfoSourceType' ci) = original ci

instance Hashable PortInfoSourceType

instance NFData PortInfoSourceType

instance ToByteString PortInfoSourceType

instance ToQuery PortInfoSourceType

instance ToHeader PortInfoSourceType

instance ToJSON PortInfoSourceType where
  toJSON = toJSONText

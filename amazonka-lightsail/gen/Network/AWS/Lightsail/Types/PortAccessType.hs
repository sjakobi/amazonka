{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.PortAccessType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.PortAccessType
  ( PortAccessType
      ( ..,
        Private,
        Public
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PortAccessType = PortAccessType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Private :: PortAccessType
pattern Private = PortAccessType' "Private"

pattern Public :: PortAccessType
pattern Public = PortAccessType' "Public"

{-# COMPLETE
  Private,
  Public,
  PortAccessType'
  #-}

instance FromText PortAccessType where
  parser = (PortAccessType' . mk) <$> takeText

instance ToText PortAccessType where
  toText (PortAccessType' ci) = original ci

instance Hashable PortAccessType

instance NFData PortAccessType

instance ToByteString PortAccessType

instance ToQuery PortAccessType

instance ToHeader PortAccessType

instance FromJSON PortAccessType where
  parseJSON = parseJSONText "PortAccessType"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsCCDescriptor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsCCDescriptor
  ( M2tsCCDescriptor
      ( ..,
        MCCDDisabled,
        MCCDEnabled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Cc Descriptor
data M2tsCCDescriptor = M2tsCCDescriptor' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MCCDDisabled :: M2tsCCDescriptor
pattern MCCDDisabled = M2tsCCDescriptor' "DISABLED"

pattern MCCDEnabled :: M2tsCCDescriptor
pattern MCCDEnabled = M2tsCCDescriptor' "ENABLED"

{-# COMPLETE
  MCCDDisabled,
  MCCDEnabled,
  M2tsCCDescriptor'
  #-}

instance FromText M2tsCCDescriptor where
  parser = (M2tsCCDescriptor' . mk) <$> takeText

instance ToText M2tsCCDescriptor where
  toText (M2tsCCDescriptor' ci) = original ci

instance Hashable M2tsCCDescriptor

instance NFData M2tsCCDescriptor

instance ToByteString M2tsCCDescriptor

instance ToQuery M2tsCCDescriptor

instance ToHeader M2tsCCDescriptor

instance ToJSON M2tsCCDescriptor where
  toJSON = toJSONText

instance FromJSON M2tsCCDescriptor where
  parseJSON = parseJSONText "M2tsCCDescriptor"

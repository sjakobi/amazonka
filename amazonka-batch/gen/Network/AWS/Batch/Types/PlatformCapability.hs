{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.PlatformCapability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.PlatformCapability
  ( PlatformCapability
      ( ..,
        PCEC2,
        PCFargate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PlatformCapability
  = PlatformCapability'
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

pattern PCEC2 :: PlatformCapability
pattern PCEC2 = PlatformCapability' "EC2"

pattern PCFargate :: PlatformCapability
pattern PCFargate = PlatformCapability' "FARGATE"

{-# COMPLETE
  PCEC2,
  PCFargate,
  PlatformCapability'
  #-}

instance FromText PlatformCapability where
  parser = (PlatformCapability' . mk) <$> takeText

instance ToText PlatformCapability where
  toText (PlatformCapability' ci) = original ci

instance Hashable PlatformCapability

instance NFData PlatformCapability

instance ToByteString PlatformCapability

instance ToQuery PlatformCapability

instance ToHeader PlatformCapability

instance ToJSON PlatformCapability where
  toJSON = toJSONText

instance FromJSON PlatformCapability where
  parseJSON = parseJSONText "PlatformCapability"

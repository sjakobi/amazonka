{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TargetPlatformOS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TargetPlatformOS
  ( TargetPlatformOS
      ( ..,
        Android,
        Linux
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetPlatformOS = TargetPlatformOS' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Android :: TargetPlatformOS
pattern Android = TargetPlatformOS' "ANDROID"

pattern Linux :: TargetPlatformOS
pattern Linux = TargetPlatformOS' "LINUX"

{-# COMPLETE
  Android,
  Linux,
  TargetPlatformOS'
  #-}

instance FromText TargetPlatformOS where
  parser = (TargetPlatformOS' . mk) <$> takeText

instance ToText TargetPlatformOS where
  toText (TargetPlatformOS' ci) = original ci

instance Hashable TargetPlatformOS

instance NFData TargetPlatformOS

instance ToByteString TargetPlatformOS

instance ToQuery TargetPlatformOS

instance ToHeader TargetPlatformOS

instance ToJSON TargetPlatformOS where
  toJSON = toJSONText

instance FromJSON TargetPlatformOS where
  parseJSON = parseJSONText "TargetPlatformOS"

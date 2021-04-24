{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TargetPlatformAccelerator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TargetPlatformAccelerator
  ( TargetPlatformAccelerator
      ( ..,
        IntelGraphics,
        Mali,
        Nvidia
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetPlatformAccelerator
  = TargetPlatformAccelerator'
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

pattern IntelGraphics :: TargetPlatformAccelerator
pattern IntelGraphics = TargetPlatformAccelerator' "INTEL_GRAPHICS"

pattern Mali :: TargetPlatformAccelerator
pattern Mali = TargetPlatformAccelerator' "MALI"

pattern Nvidia :: TargetPlatformAccelerator
pattern Nvidia = TargetPlatformAccelerator' "NVIDIA"

{-# COMPLETE
  IntelGraphics,
  Mali,
  Nvidia,
  TargetPlatformAccelerator'
  #-}

instance FromText TargetPlatformAccelerator where
  parser = (TargetPlatformAccelerator' . mk) <$> takeText

instance ToText TargetPlatformAccelerator where
  toText (TargetPlatformAccelerator' ci) = original ci

instance Hashable TargetPlatformAccelerator

instance NFData TargetPlatformAccelerator

instance ToByteString TargetPlatformAccelerator

instance ToQuery TargetPlatformAccelerator

instance ToHeader TargetPlatformAccelerator

instance ToJSON TargetPlatformAccelerator where
  toJSON = toJSONText

instance FromJSON TargetPlatformAccelerator where
  parseJSON = parseJSONText "TargetPlatformAccelerator"

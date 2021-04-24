{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TargetPlatformArch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TargetPlatformArch
  ( TargetPlatformArch
      ( ..,
        ARM64,
        ArmEabi,
        ArmEabihf,
        X86,
        X86_64
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetPlatformArch
  = TargetPlatformArch'
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

pattern ARM64 :: TargetPlatformArch
pattern ARM64 = TargetPlatformArch' "ARM64"

pattern ArmEabi :: TargetPlatformArch
pattern ArmEabi = TargetPlatformArch' "ARM_EABI"

pattern ArmEabihf :: TargetPlatformArch
pattern ArmEabihf = TargetPlatformArch' "ARM_EABIHF"

pattern X86 :: TargetPlatformArch
pattern X86 = TargetPlatformArch' "X86"

pattern X86_64 :: TargetPlatformArch
pattern X86_64 = TargetPlatformArch' "X86_64"

{-# COMPLETE
  ARM64,
  ArmEabi,
  ArmEabihf,
  X86,
  X86_64,
  TargetPlatformArch'
  #-}

instance FromText TargetPlatformArch where
  parser = (TargetPlatformArch' . mk) <$> takeText

instance ToText TargetPlatformArch where
  toText (TargetPlatformArch' ci) = original ci

instance Hashable TargetPlatformArch

instance NFData TargetPlatformArch

instance ToByteString TargetPlatformArch

instance ToQuery TargetPlatformArch

instance ToHeader TargetPlatformArch

instance ToJSON TargetPlatformArch where
  toJSON = toJSONText

instance FromJSON TargetPlatformArch where
  parseJSON = parseJSONText "TargetPlatformArch"

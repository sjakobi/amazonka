{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ArchitectureType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ArchitectureType
  ( ArchitectureType
      ( ..,
        ARM64,
        I386,
        X86_64
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ArchitectureType = ArchitectureType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ARM64 :: ArchitectureType
pattern ARM64 = ArchitectureType' "arm64"

pattern I386 :: ArchitectureType
pattern I386 = ArchitectureType' "i386"

pattern X86_64 :: ArchitectureType
pattern X86_64 = ArchitectureType' "x86_64"

{-# COMPLETE
  ARM64,
  I386,
  X86_64,
  ArchitectureType'
  #-}

instance FromText ArchitectureType where
  parser = (ArchitectureType' . mk) <$> takeText

instance ToText ArchitectureType where
  toText (ArchitectureType' ci) = original ci

instance Hashable ArchitectureType

instance NFData ArchitectureType

instance ToByteString ArchitectureType

instance ToQuery ArchitectureType

instance ToHeader ArchitectureType

instance FromXML ArchitectureType where
  parseXML = parseXMLText "ArchitectureType"

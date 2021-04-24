{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ArchitectureValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ArchitectureValues
  ( ArchitectureValues
      ( ..,
        AVARM64,
        AVI386,
        AVX86_64
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ArchitectureValues
  = ArchitectureValues'
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

pattern AVARM64 :: ArchitectureValues
pattern AVARM64 = ArchitectureValues' "arm64"

pattern AVI386 :: ArchitectureValues
pattern AVI386 = ArchitectureValues' "i386"

pattern AVX86_64 :: ArchitectureValues
pattern AVX86_64 = ArchitectureValues' "x86_64"

{-# COMPLETE
  AVARM64,
  AVI386,
  AVX86_64,
  ArchitectureValues'
  #-}

instance FromText ArchitectureValues where
  parser = (ArchitectureValues' . mk) <$> takeText

instance ToText ArchitectureValues where
  toText (ArchitectureValues' ci) = original ci

instance Hashable ArchitectureValues

instance NFData ArchitectureValues

instance ToByteString ArchitectureValues

instance ToQuery ArchitectureValues

instance ToHeader ArchitectureValues

instance FromXML ArchitectureValues where
  parseXML = parseXMLText "ArchitectureValues"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VolumeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeType
  ( VolumeType
      ( ..,
        GP2,
        GP3,
        IO1,
        IO2,
        SC1,
        ST1,
        Standard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VolumeType = VolumeType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern GP2 :: VolumeType
pattern GP2 = VolumeType' "gp2"

pattern GP3 :: VolumeType
pattern GP3 = VolumeType' "gp3"

pattern IO1 :: VolumeType
pattern IO1 = VolumeType' "io1"

pattern IO2 :: VolumeType
pattern IO2 = VolumeType' "io2"

pattern SC1 :: VolumeType
pattern SC1 = VolumeType' "sc1"

pattern ST1 :: VolumeType
pattern ST1 = VolumeType' "st1"

pattern Standard :: VolumeType
pattern Standard = VolumeType' "standard"

{-# COMPLETE
  GP2,
  GP3,
  IO1,
  IO2,
  SC1,
  ST1,
  Standard,
  VolumeType'
  #-}

instance FromText VolumeType where
  parser = (VolumeType' . mk) <$> takeText

instance ToText VolumeType where
  toText (VolumeType' ci) = original ci

instance Hashable VolumeType

instance NFData VolumeType

instance ToByteString VolumeType

instance ToQuery VolumeType

instance ToHeader VolumeType

instance FromXML VolumeType where
  parseXML = parseXMLText "VolumeType"

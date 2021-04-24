{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DiskImageFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DiskImageFormat
  ( DiskImageFormat
      ( ..,
        Raw,
        VHD,
        VMDK
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data DiskImageFormat = DiskImageFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Raw :: DiskImageFormat
pattern Raw = DiskImageFormat' "RAW"

pattern VHD :: DiskImageFormat
pattern VHD = DiskImageFormat' "VHD"

pattern VMDK :: DiskImageFormat
pattern VMDK = DiskImageFormat' "VMDK"

{-# COMPLETE
  Raw,
  VHD,
  VMDK,
  DiskImageFormat'
  #-}

instance FromText DiskImageFormat where
  parser = (DiskImageFormat' . mk) <$> takeText

instance ToText DiskImageFormat where
  toText (DiskImageFormat' ci) = original ci

instance Hashable DiskImageFormat

instance NFData DiskImageFormat

instance ToByteString DiskImageFormat

instance ToQuery DiskImageFormat

instance ToHeader DiskImageFormat

instance FromXML DiskImageFormat where
  parseXML = parseXMLText "DiskImageFormat"

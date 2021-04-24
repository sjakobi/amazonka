{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ImageTypeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImageTypeValues
  ( ImageTypeValues
      ( ..,
        Kernel,
        Machine,
        RAMDisk
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ImageTypeValues = ImageTypeValues' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Kernel :: ImageTypeValues
pattern Kernel = ImageTypeValues' "kernel"

pattern Machine :: ImageTypeValues
pattern Machine = ImageTypeValues' "machine"

pattern RAMDisk :: ImageTypeValues
pattern RAMDisk = ImageTypeValues' "ramdisk"

{-# COMPLETE
  Kernel,
  Machine,
  RAMDisk,
  ImageTypeValues'
  #-}

instance FromText ImageTypeValues where
  parser = (ImageTypeValues' . mk) <$> takeText

instance ToText ImageTypeValues where
  toText (ImageTypeValues' ci) = original ci

instance Hashable ImageTypeValues

instance NFData ImageTypeValues

instance ToByteString ImageTypeValues

instance ToQuery ImageTypeValues

instance ToHeader ImageTypeValues

instance FromXML ImageTypeValues where
  parseXML = parseXMLText "ImageTypeValues"

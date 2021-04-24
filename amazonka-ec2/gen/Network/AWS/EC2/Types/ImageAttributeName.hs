{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ImageAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImageAttributeName
  ( ImageAttributeName
      ( ..,
        IANBlockDeviceMapping,
        IANDescription,
        IANKernel,
        IANLaunchPermission,
        IANProductCodes,
        IANRAMDisk,
        IANSRIOVNetSupport
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ImageAttributeName
  = ImageAttributeName'
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

pattern IANBlockDeviceMapping :: ImageAttributeName
pattern IANBlockDeviceMapping = ImageAttributeName' "blockDeviceMapping"

pattern IANDescription :: ImageAttributeName
pattern IANDescription = ImageAttributeName' "description"

pattern IANKernel :: ImageAttributeName
pattern IANKernel = ImageAttributeName' "kernel"

pattern IANLaunchPermission :: ImageAttributeName
pattern IANLaunchPermission = ImageAttributeName' "launchPermission"

pattern IANProductCodes :: ImageAttributeName
pattern IANProductCodes = ImageAttributeName' "productCodes"

pattern IANRAMDisk :: ImageAttributeName
pattern IANRAMDisk = ImageAttributeName' "ramdisk"

pattern IANSRIOVNetSupport :: ImageAttributeName
pattern IANSRIOVNetSupport = ImageAttributeName' "sriovNetSupport"

{-# COMPLETE
  IANBlockDeviceMapping,
  IANDescription,
  IANKernel,
  IANLaunchPermission,
  IANProductCodes,
  IANRAMDisk,
  IANSRIOVNetSupport,
  ImageAttributeName'
  #-}

instance FromText ImageAttributeName where
  parser = (ImageAttributeName' . mk) <$> takeText

instance ToText ImageAttributeName where
  toText (ImageAttributeName' ci) = original ci

instance Hashable ImageAttributeName

instance NFData ImageAttributeName

instance ToByteString ImageAttributeName

instance ToQuery ImageAttributeName

instance ToHeader ImageAttributeName

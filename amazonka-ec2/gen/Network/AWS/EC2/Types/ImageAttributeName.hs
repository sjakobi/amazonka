{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ImageAttributeNameBlockDeviceMapping,
        ImageAttributeNameDescription,
        ImageAttributeNameKernel,
        ImageAttributeNameLaunchPermission,
        ImageAttributeNameProductCodes,
        ImageAttributeNameRamdisk,
        ImageAttributeNameSriovNetSupport
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ImageAttributeName = ImageAttributeName'
  { fromImageAttributeName ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ImageAttributeNameBlockDeviceMapping :: ImageAttributeName
pattern ImageAttributeNameBlockDeviceMapping = ImageAttributeName' "blockDeviceMapping"

pattern ImageAttributeNameDescription :: ImageAttributeName
pattern ImageAttributeNameDescription = ImageAttributeName' "description"

pattern ImageAttributeNameKernel :: ImageAttributeName
pattern ImageAttributeNameKernel = ImageAttributeName' "kernel"

pattern ImageAttributeNameLaunchPermission :: ImageAttributeName
pattern ImageAttributeNameLaunchPermission = ImageAttributeName' "launchPermission"

pattern ImageAttributeNameProductCodes :: ImageAttributeName
pattern ImageAttributeNameProductCodes = ImageAttributeName' "productCodes"

pattern ImageAttributeNameRamdisk :: ImageAttributeName
pattern ImageAttributeNameRamdisk = ImageAttributeName' "ramdisk"

pattern ImageAttributeNameSriovNetSupport :: ImageAttributeName
pattern ImageAttributeNameSriovNetSupport = ImageAttributeName' "sriovNetSupport"

{-# COMPLETE
  ImageAttributeNameBlockDeviceMapping,
  ImageAttributeNameDescription,
  ImageAttributeNameKernel,
  ImageAttributeNameLaunchPermission,
  ImageAttributeNameProductCodes,
  ImageAttributeNameRamdisk,
  ImageAttributeNameSriovNetSupport,
  ImageAttributeName'
  #-}

instance Prelude.FromText ImageAttributeName where
  parser = ImageAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ImageAttributeName where
  toText (ImageAttributeName' x) = x

instance Prelude.Hashable ImageAttributeName

instance Prelude.NFData ImageAttributeName

instance Prelude.ToByteString ImageAttributeName

instance Prelude.ToQuery ImageAttributeName

instance Prelude.ToHeader ImageAttributeName

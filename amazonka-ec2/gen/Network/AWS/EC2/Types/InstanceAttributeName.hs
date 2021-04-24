{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.InstanceAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceAttributeName
  ( InstanceAttributeName
      ( ..,
        IBlockDeviceMapping,
        IDisableAPITermination,
        IEBSOptimized,
        IEnaSupport,
        IEnclaveOptions,
        IGroupSet,
        IInstanceInitiatedShutdownBehavior,
        IInstanceType,
        IKernel,
        IProductCodes,
        IRAMDisk,
        IRootDeviceName,
        ISRIOVNetSupport,
        ISourceDestCheck,
        IUserData
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data InstanceAttributeName
  = InstanceAttributeName'
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

pattern IBlockDeviceMapping :: InstanceAttributeName
pattern IBlockDeviceMapping = InstanceAttributeName' "blockDeviceMapping"

pattern IDisableAPITermination :: InstanceAttributeName
pattern IDisableAPITermination = InstanceAttributeName' "disableApiTermination"

pattern IEBSOptimized :: InstanceAttributeName
pattern IEBSOptimized = InstanceAttributeName' "ebsOptimized"

pattern IEnaSupport :: InstanceAttributeName
pattern IEnaSupport = InstanceAttributeName' "enaSupport"

pattern IEnclaveOptions :: InstanceAttributeName
pattern IEnclaveOptions = InstanceAttributeName' "enclaveOptions"

pattern IGroupSet :: InstanceAttributeName
pattern IGroupSet = InstanceAttributeName' "groupSet"

pattern IInstanceInitiatedShutdownBehavior :: InstanceAttributeName
pattern IInstanceInitiatedShutdownBehavior = InstanceAttributeName' "instanceInitiatedShutdownBehavior"

pattern IInstanceType :: InstanceAttributeName
pattern IInstanceType = InstanceAttributeName' "instanceType"

pattern IKernel :: InstanceAttributeName
pattern IKernel = InstanceAttributeName' "kernel"

pattern IProductCodes :: InstanceAttributeName
pattern IProductCodes = InstanceAttributeName' "productCodes"

pattern IRAMDisk :: InstanceAttributeName
pattern IRAMDisk = InstanceAttributeName' "ramdisk"

pattern IRootDeviceName :: InstanceAttributeName
pattern IRootDeviceName = InstanceAttributeName' "rootDeviceName"

pattern ISRIOVNetSupport :: InstanceAttributeName
pattern ISRIOVNetSupport = InstanceAttributeName' "sriovNetSupport"

pattern ISourceDestCheck :: InstanceAttributeName
pattern ISourceDestCheck = InstanceAttributeName' "sourceDestCheck"

pattern IUserData :: InstanceAttributeName
pattern IUserData = InstanceAttributeName' "userData"

{-# COMPLETE
  IBlockDeviceMapping,
  IDisableAPITermination,
  IEBSOptimized,
  IEnaSupport,
  IEnclaveOptions,
  IGroupSet,
  IInstanceInitiatedShutdownBehavior,
  IInstanceType,
  IKernel,
  IProductCodes,
  IRAMDisk,
  IRootDeviceName,
  ISRIOVNetSupport,
  ISourceDestCheck,
  IUserData,
  InstanceAttributeName'
  #-}

instance FromText InstanceAttributeName where
  parser = (InstanceAttributeName' . mk) <$> takeText

instance ToText InstanceAttributeName where
  toText (InstanceAttributeName' ci) = original ci

instance Hashable InstanceAttributeName

instance NFData InstanceAttributeName

instance ToByteString InstanceAttributeName

instance ToQuery InstanceAttributeName

instance ToHeader InstanceAttributeName

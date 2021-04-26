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
-- Module      : Network.AWS.EC2.Types.InstanceAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceAttributeName
  ( InstanceAttributeName
      ( ..,
        InstanceAttributeNameBlockDeviceMapping,
        InstanceAttributeNameDisableApiTermination,
        InstanceAttributeNameEbsOptimized,
        InstanceAttributeNameEnaSupport,
        InstanceAttributeNameEnclaveOptions,
        InstanceAttributeNameGroupSet,
        InstanceAttributeNameInstanceInitiatedShutdownBehavior,
        InstanceAttributeNameInstanceType,
        InstanceAttributeNameKernel,
        InstanceAttributeNameProductCodes,
        InstanceAttributeNameRamdisk,
        InstanceAttributeNameRootDeviceName,
        InstanceAttributeNameSourceDestCheck,
        InstanceAttributeNameSriovNetSupport,
        InstanceAttributeNameUserData
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype InstanceAttributeName = InstanceAttributeName'
  { fromInstanceAttributeName ::
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

pattern InstanceAttributeNameBlockDeviceMapping :: InstanceAttributeName
pattern InstanceAttributeNameBlockDeviceMapping = InstanceAttributeName' "blockDeviceMapping"

pattern InstanceAttributeNameDisableApiTermination :: InstanceAttributeName
pattern InstanceAttributeNameDisableApiTermination = InstanceAttributeName' "disableApiTermination"

pattern InstanceAttributeNameEbsOptimized :: InstanceAttributeName
pattern InstanceAttributeNameEbsOptimized = InstanceAttributeName' "ebsOptimized"

pattern InstanceAttributeNameEnaSupport :: InstanceAttributeName
pattern InstanceAttributeNameEnaSupport = InstanceAttributeName' "enaSupport"

pattern InstanceAttributeNameEnclaveOptions :: InstanceAttributeName
pattern InstanceAttributeNameEnclaveOptions = InstanceAttributeName' "enclaveOptions"

pattern InstanceAttributeNameGroupSet :: InstanceAttributeName
pattern InstanceAttributeNameGroupSet = InstanceAttributeName' "groupSet"

pattern InstanceAttributeNameInstanceInitiatedShutdownBehavior :: InstanceAttributeName
pattern InstanceAttributeNameInstanceInitiatedShutdownBehavior = InstanceAttributeName' "instanceInitiatedShutdownBehavior"

pattern InstanceAttributeNameInstanceType :: InstanceAttributeName
pattern InstanceAttributeNameInstanceType = InstanceAttributeName' "instanceType"

pattern InstanceAttributeNameKernel :: InstanceAttributeName
pattern InstanceAttributeNameKernel = InstanceAttributeName' "kernel"

pattern InstanceAttributeNameProductCodes :: InstanceAttributeName
pattern InstanceAttributeNameProductCodes = InstanceAttributeName' "productCodes"

pattern InstanceAttributeNameRamdisk :: InstanceAttributeName
pattern InstanceAttributeNameRamdisk = InstanceAttributeName' "ramdisk"

pattern InstanceAttributeNameRootDeviceName :: InstanceAttributeName
pattern InstanceAttributeNameRootDeviceName = InstanceAttributeName' "rootDeviceName"

pattern InstanceAttributeNameSourceDestCheck :: InstanceAttributeName
pattern InstanceAttributeNameSourceDestCheck = InstanceAttributeName' "sourceDestCheck"

pattern InstanceAttributeNameSriovNetSupport :: InstanceAttributeName
pattern InstanceAttributeNameSriovNetSupport = InstanceAttributeName' "sriovNetSupport"

pattern InstanceAttributeNameUserData :: InstanceAttributeName
pattern InstanceAttributeNameUserData = InstanceAttributeName' "userData"

{-# COMPLETE
  InstanceAttributeNameBlockDeviceMapping,
  InstanceAttributeNameDisableApiTermination,
  InstanceAttributeNameEbsOptimized,
  InstanceAttributeNameEnaSupport,
  InstanceAttributeNameEnclaveOptions,
  InstanceAttributeNameGroupSet,
  InstanceAttributeNameInstanceInitiatedShutdownBehavior,
  InstanceAttributeNameInstanceType,
  InstanceAttributeNameKernel,
  InstanceAttributeNameProductCodes,
  InstanceAttributeNameRamdisk,
  InstanceAttributeNameRootDeviceName,
  InstanceAttributeNameSourceDestCheck,
  InstanceAttributeNameSriovNetSupport,
  InstanceAttributeNameUserData,
  InstanceAttributeName'
  #-}

instance Prelude.FromText InstanceAttributeName where
  parser = InstanceAttributeName' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceAttributeName where
  toText (InstanceAttributeName' x) = x

instance Prelude.Hashable InstanceAttributeName

instance Prelude.NFData InstanceAttributeName

instance Prelude.ToByteString InstanceAttributeName

instance Prelude.ToQuery InstanceAttributeName

instance Prelude.ToHeader InstanceAttributeName

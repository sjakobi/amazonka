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
-- Module      : Network.AWS.FMS.Types.DependentServiceName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.DependentServiceName
  ( DependentServiceName
      ( ..,
        DependentServiceNameAWSCONFIG,
        DependentServiceNameAWSSHIELDADVANCED,
        DependentServiceNameAWSVPC,
        DependentServiceNameAWSWAF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DependentServiceName = DependentServiceName'
  { fromDependentServiceName ::
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

pattern DependentServiceNameAWSCONFIG :: DependentServiceName
pattern DependentServiceNameAWSCONFIG = DependentServiceName' "AWSCONFIG"

pattern DependentServiceNameAWSSHIELDADVANCED :: DependentServiceName
pattern DependentServiceNameAWSSHIELDADVANCED = DependentServiceName' "AWSSHIELD_ADVANCED"

pattern DependentServiceNameAWSVPC :: DependentServiceName
pattern DependentServiceNameAWSVPC = DependentServiceName' "AWSVPC"

pattern DependentServiceNameAWSWAF :: DependentServiceName
pattern DependentServiceNameAWSWAF = DependentServiceName' "AWSWAF"

{-# COMPLETE
  DependentServiceNameAWSCONFIG,
  DependentServiceNameAWSSHIELDADVANCED,
  DependentServiceNameAWSVPC,
  DependentServiceNameAWSWAF,
  DependentServiceName'
  #-}

instance Prelude.FromText DependentServiceName where
  parser = DependentServiceName' Prelude.<$> Prelude.takeText

instance Prelude.ToText DependentServiceName where
  toText (DependentServiceName' x) = x

instance Prelude.Hashable DependentServiceName

instance Prelude.NFData DependentServiceName

instance Prelude.ToByteString DependentServiceName

instance Prelude.ToQuery DependentServiceName

instance Prelude.ToHeader DependentServiceName

instance Prelude.FromJSON DependentServiceName where
  parseJSON = Prelude.parseJSONText "DependentServiceName"

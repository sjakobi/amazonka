{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AWSSHieldAdvanced,
        AWSconfig,
        AWSvpc,
        AWSwaf
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DependentServiceName
  = DependentServiceName'
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

pattern AWSSHieldAdvanced :: DependentServiceName
pattern AWSSHieldAdvanced = DependentServiceName' "AWSSHIELD_ADVANCED"

pattern AWSconfig :: DependentServiceName
pattern AWSconfig = DependentServiceName' "AWSCONFIG"

pattern AWSvpc :: DependentServiceName
pattern AWSvpc = DependentServiceName' "AWSVPC"

pattern AWSwaf :: DependentServiceName
pattern AWSwaf = DependentServiceName' "AWSWAF"

{-# COMPLETE
  AWSSHieldAdvanced,
  AWSconfig,
  AWSvpc,
  AWSwaf,
  DependentServiceName'
  #-}

instance FromText DependentServiceName where
  parser = (DependentServiceName' . mk) <$> takeText

instance ToText DependentServiceName where
  toText (DependentServiceName' ci) = original ci

instance Hashable DependentServiceName

instance NFData DependentServiceName

instance ToByteString DependentServiceName

instance ToQuery DependentServiceName

instance ToHeader DependentServiceName

instance FromJSON DependentServiceName where
  parseJSON = parseJSONText "DependentServiceName"

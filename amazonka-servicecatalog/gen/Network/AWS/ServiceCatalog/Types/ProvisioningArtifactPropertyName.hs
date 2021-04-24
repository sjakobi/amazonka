{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisioningArtifactPropertyName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisioningArtifactPropertyName
  ( ProvisioningArtifactPropertyName
      ( ..,
        Id
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProvisioningArtifactPropertyName
  = ProvisioningArtifactPropertyName'
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

pattern Id :: ProvisioningArtifactPropertyName
pattern Id = ProvisioningArtifactPropertyName' "Id"

{-# COMPLETE
  Id,
  ProvisioningArtifactPropertyName'
  #-}

instance FromText ProvisioningArtifactPropertyName where
  parser = (ProvisioningArtifactPropertyName' . mk) <$> takeText

instance ToText ProvisioningArtifactPropertyName where
  toText (ProvisioningArtifactPropertyName' ci) = original ci

instance Hashable ProvisioningArtifactPropertyName

instance NFData ProvisioningArtifactPropertyName

instance ToByteString ProvisioningArtifactPropertyName

instance ToQuery ProvisioningArtifactPropertyName

instance ToHeader ProvisioningArtifactPropertyName

instance ToJSON ProvisioningArtifactPropertyName where
  toJSON = toJSONText

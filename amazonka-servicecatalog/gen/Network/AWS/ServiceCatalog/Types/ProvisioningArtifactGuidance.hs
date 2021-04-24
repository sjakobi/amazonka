{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisioningArtifactGuidance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisioningArtifactGuidance
  ( ProvisioningArtifactGuidance
      ( ..,
        Default,
        Deprecated
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProvisioningArtifactGuidance
  = ProvisioningArtifactGuidance'
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

pattern Default :: ProvisioningArtifactGuidance
pattern Default = ProvisioningArtifactGuidance' "DEFAULT"

pattern Deprecated :: ProvisioningArtifactGuidance
pattern Deprecated = ProvisioningArtifactGuidance' "DEPRECATED"

{-# COMPLETE
  Default,
  Deprecated,
  ProvisioningArtifactGuidance'
  #-}

instance FromText ProvisioningArtifactGuidance where
  parser = (ProvisioningArtifactGuidance' . mk) <$> takeText

instance ToText ProvisioningArtifactGuidance where
  toText (ProvisioningArtifactGuidance' ci) = original ci

instance Hashable ProvisioningArtifactGuidance

instance NFData ProvisioningArtifactGuidance

instance ToByteString ProvisioningArtifactGuidance

instance ToQuery ProvisioningArtifactGuidance

instance ToHeader ProvisioningArtifactGuidance

instance ToJSON ProvisioningArtifactGuidance where
  toJSON = toJSONText

instance FromJSON ProvisioningArtifactGuidance where
  parseJSON = parseJSONText "ProvisioningArtifactGuidance"

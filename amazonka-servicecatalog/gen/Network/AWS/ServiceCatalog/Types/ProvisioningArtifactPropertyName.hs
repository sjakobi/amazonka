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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisioningArtifactPropertyName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisioningArtifactPropertyName
  ( ProvisioningArtifactPropertyName
      ( ..,
        ProvisioningArtifactPropertyNameID
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisioningArtifactPropertyName = ProvisioningArtifactPropertyName'
  { fromProvisioningArtifactPropertyName ::
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

pattern ProvisioningArtifactPropertyNameID :: ProvisioningArtifactPropertyName
pattern ProvisioningArtifactPropertyNameID = ProvisioningArtifactPropertyName' "Id"

{-# COMPLETE
  ProvisioningArtifactPropertyNameID,
  ProvisioningArtifactPropertyName'
  #-}

instance Prelude.FromText ProvisioningArtifactPropertyName where
  parser = ProvisioningArtifactPropertyName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisioningArtifactPropertyName where
  toText (ProvisioningArtifactPropertyName' x) = x

instance Prelude.Hashable ProvisioningArtifactPropertyName

instance Prelude.NFData ProvisioningArtifactPropertyName

instance Prelude.ToByteString ProvisioningArtifactPropertyName

instance Prelude.ToQuery ProvisioningArtifactPropertyName

instance Prelude.ToHeader ProvisioningArtifactPropertyName

instance Prelude.ToJSON ProvisioningArtifactPropertyName where
  toJSON = Prelude.toJSONText

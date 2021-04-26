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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisioningArtifactGuidance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisioningArtifactGuidance
  ( ProvisioningArtifactGuidance
      ( ..,
        ProvisioningArtifactGuidanceDEFAULT,
        ProvisioningArtifactGuidanceDEPRECATED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProvisioningArtifactGuidance = ProvisioningArtifactGuidance'
  { fromProvisioningArtifactGuidance ::
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

pattern ProvisioningArtifactGuidanceDEFAULT :: ProvisioningArtifactGuidance
pattern ProvisioningArtifactGuidanceDEFAULT = ProvisioningArtifactGuidance' "DEFAULT"

pattern ProvisioningArtifactGuidanceDEPRECATED :: ProvisioningArtifactGuidance
pattern ProvisioningArtifactGuidanceDEPRECATED = ProvisioningArtifactGuidance' "DEPRECATED"

{-# COMPLETE
  ProvisioningArtifactGuidanceDEFAULT,
  ProvisioningArtifactGuidanceDEPRECATED,
  ProvisioningArtifactGuidance'
  #-}

instance Prelude.FromText ProvisioningArtifactGuidance where
  parser = ProvisioningArtifactGuidance' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProvisioningArtifactGuidance where
  toText (ProvisioningArtifactGuidance' x) = x

instance Prelude.Hashable ProvisioningArtifactGuidance

instance Prelude.NFData ProvisioningArtifactGuidance

instance Prelude.ToByteString ProvisioningArtifactGuidance

instance Prelude.ToQuery ProvisioningArtifactGuidance

instance Prelude.ToHeader ProvisioningArtifactGuidance

instance Prelude.ToJSON ProvisioningArtifactGuidance where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProvisioningArtifactGuidance where
  parseJSON = Prelude.parseJSONText "ProvisioningArtifactGuidance"

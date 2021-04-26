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
-- Module      : Network.AWS.SSM.Types.ResourceTypeForTagging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ResourceTypeForTagging
  ( ResourceTypeForTagging
      ( ..,
        ResourceTypeForTaggingDocument,
        ResourceTypeForTaggingMaintenanceWindow,
        ResourceTypeForTaggingManagedInstance,
        ResourceTypeForTaggingOpsItem,
        ResourceTypeForTaggingParameter,
        ResourceTypeForTaggingPatchBaseline
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ResourceTypeForTagging = ResourceTypeForTagging'
  { fromResourceTypeForTagging ::
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

pattern ResourceTypeForTaggingDocument :: ResourceTypeForTagging
pattern ResourceTypeForTaggingDocument = ResourceTypeForTagging' "Document"

pattern ResourceTypeForTaggingMaintenanceWindow :: ResourceTypeForTagging
pattern ResourceTypeForTaggingMaintenanceWindow = ResourceTypeForTagging' "MaintenanceWindow"

pattern ResourceTypeForTaggingManagedInstance :: ResourceTypeForTagging
pattern ResourceTypeForTaggingManagedInstance = ResourceTypeForTagging' "ManagedInstance"

pattern ResourceTypeForTaggingOpsItem :: ResourceTypeForTagging
pattern ResourceTypeForTaggingOpsItem = ResourceTypeForTagging' "OpsItem"

pattern ResourceTypeForTaggingParameter :: ResourceTypeForTagging
pattern ResourceTypeForTaggingParameter = ResourceTypeForTagging' "Parameter"

pattern ResourceTypeForTaggingPatchBaseline :: ResourceTypeForTagging
pattern ResourceTypeForTaggingPatchBaseline = ResourceTypeForTagging' "PatchBaseline"

{-# COMPLETE
  ResourceTypeForTaggingDocument,
  ResourceTypeForTaggingMaintenanceWindow,
  ResourceTypeForTaggingManagedInstance,
  ResourceTypeForTaggingOpsItem,
  ResourceTypeForTaggingParameter,
  ResourceTypeForTaggingPatchBaseline,
  ResourceTypeForTagging'
  #-}

instance Prelude.FromText ResourceTypeForTagging where
  parser = ResourceTypeForTagging' Prelude.<$> Prelude.takeText

instance Prelude.ToText ResourceTypeForTagging where
  toText (ResourceTypeForTagging' x) = x

instance Prelude.Hashable ResourceTypeForTagging

instance Prelude.NFData ResourceTypeForTagging

instance Prelude.ToByteString ResourceTypeForTagging

instance Prelude.ToQuery ResourceTypeForTagging

instance Prelude.ToHeader ResourceTypeForTagging

instance Prelude.ToJSON ResourceTypeForTagging where
  toJSON = Prelude.toJSONText

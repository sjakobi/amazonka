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
-- Module      : Network.AWS.CodeBuild.Types.ArtifactNamespace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ArtifactNamespace
  ( ArtifactNamespace
      ( ..,
        ArtifactNamespaceBUILDID,
        ArtifactNamespaceNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArtifactNamespace = ArtifactNamespace'
  { fromArtifactNamespace ::
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

pattern ArtifactNamespaceBUILDID :: ArtifactNamespace
pattern ArtifactNamespaceBUILDID = ArtifactNamespace' "BUILD_ID"

pattern ArtifactNamespaceNONE :: ArtifactNamespace
pattern ArtifactNamespaceNONE = ArtifactNamespace' "NONE"

{-# COMPLETE
  ArtifactNamespaceBUILDID,
  ArtifactNamespaceNONE,
  ArtifactNamespace'
  #-}

instance Prelude.FromText ArtifactNamespace where
  parser = ArtifactNamespace' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArtifactNamespace where
  toText (ArtifactNamespace' x) = x

instance Prelude.Hashable ArtifactNamespace

instance Prelude.NFData ArtifactNamespace

instance Prelude.ToByteString ArtifactNamespace

instance Prelude.ToQuery ArtifactNamespace

instance Prelude.ToHeader ArtifactNamespace

instance Prelude.ToJSON ArtifactNamespace where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ArtifactNamespace where
  parseJSON = Prelude.parseJSONText "ArtifactNamespace"

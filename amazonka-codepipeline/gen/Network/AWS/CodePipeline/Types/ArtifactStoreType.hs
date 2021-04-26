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
-- Module      : Network.AWS.CodePipeline.Types.ArtifactStoreType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ArtifactStoreType
  ( ArtifactStoreType
      ( ..,
        ArtifactStoreTypeS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArtifactStoreType = ArtifactStoreType'
  { fromArtifactStoreType ::
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

pattern ArtifactStoreTypeS3 :: ArtifactStoreType
pattern ArtifactStoreTypeS3 = ArtifactStoreType' "S3"

{-# COMPLETE
  ArtifactStoreTypeS3,
  ArtifactStoreType'
  #-}

instance Prelude.FromText ArtifactStoreType where
  parser = ArtifactStoreType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArtifactStoreType where
  toText (ArtifactStoreType' x) = x

instance Prelude.Hashable ArtifactStoreType

instance Prelude.NFData ArtifactStoreType

instance Prelude.ToByteString ArtifactStoreType

instance Prelude.ToQuery ArtifactStoreType

instance Prelude.ToHeader ArtifactStoreType

instance Prelude.ToJSON ArtifactStoreType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ArtifactStoreType where
  parseJSON = Prelude.parseJSONText "ArtifactStoreType"

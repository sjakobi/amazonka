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
-- Module      : Network.AWS.CodeBuild.Types.ArtifactsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ArtifactsType
  ( ArtifactsType
      ( ..,
        ArtifactsTypeCODEPIPELINE,
        ArtifactsTypeNOARTIFACTS,
        ArtifactsTypeS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArtifactsType = ArtifactsType'
  { fromArtifactsType ::
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

pattern ArtifactsTypeCODEPIPELINE :: ArtifactsType
pattern ArtifactsTypeCODEPIPELINE = ArtifactsType' "CODEPIPELINE"

pattern ArtifactsTypeNOARTIFACTS :: ArtifactsType
pattern ArtifactsTypeNOARTIFACTS = ArtifactsType' "NO_ARTIFACTS"

pattern ArtifactsTypeS3 :: ArtifactsType
pattern ArtifactsTypeS3 = ArtifactsType' "S3"

{-# COMPLETE
  ArtifactsTypeCODEPIPELINE,
  ArtifactsTypeNOARTIFACTS,
  ArtifactsTypeS3,
  ArtifactsType'
  #-}

instance Prelude.FromText ArtifactsType where
  parser = ArtifactsType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArtifactsType where
  toText (ArtifactsType' x) = x

instance Prelude.Hashable ArtifactsType

instance Prelude.NFData ArtifactsType

instance Prelude.ToByteString ArtifactsType

instance Prelude.ToQuery ArtifactsType

instance Prelude.ToHeader ArtifactsType

instance Prelude.ToJSON ArtifactsType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ArtifactsType where
  parseJSON = Prelude.parseJSONText "ArtifactsType"

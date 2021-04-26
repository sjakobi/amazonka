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
-- Module      : Network.AWS.CodePipeline.Types.ArtifactLocationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ArtifactLocationType
  ( ArtifactLocationType
      ( ..,
        ArtifactLocationTypeS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArtifactLocationType = ArtifactLocationType'
  { fromArtifactLocationType ::
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

pattern ArtifactLocationTypeS3 :: ArtifactLocationType
pattern ArtifactLocationTypeS3 = ArtifactLocationType' "S3"

{-# COMPLETE
  ArtifactLocationTypeS3,
  ArtifactLocationType'
  #-}

instance Prelude.FromText ArtifactLocationType where
  parser = ArtifactLocationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArtifactLocationType where
  toText (ArtifactLocationType' x) = x

instance Prelude.Hashable ArtifactLocationType

instance Prelude.NFData ArtifactLocationType

instance Prelude.ToByteString ArtifactLocationType

instance Prelude.ToQuery ArtifactLocationType

instance Prelude.ToHeader ArtifactLocationType

instance Prelude.FromJSON ArtifactLocationType where
  parseJSON = Prelude.parseJSONText "ArtifactLocationType"

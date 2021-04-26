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
-- Module      : Network.AWS.CodeBuild.Types.ArtifactPackaging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ArtifactPackaging
  ( ArtifactPackaging
      ( ..,
        ArtifactPackagingNONE,
        ArtifactPackagingZIP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArtifactPackaging = ArtifactPackaging'
  { fromArtifactPackaging ::
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

pattern ArtifactPackagingNONE :: ArtifactPackaging
pattern ArtifactPackagingNONE = ArtifactPackaging' "NONE"

pattern ArtifactPackagingZIP :: ArtifactPackaging
pattern ArtifactPackagingZIP = ArtifactPackaging' "ZIP"

{-# COMPLETE
  ArtifactPackagingNONE,
  ArtifactPackagingZIP,
  ArtifactPackaging'
  #-}

instance Prelude.FromText ArtifactPackaging where
  parser = ArtifactPackaging' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArtifactPackaging where
  toText (ArtifactPackaging' x) = x

instance Prelude.Hashable ArtifactPackaging

instance Prelude.NFData ArtifactPackaging

instance Prelude.ToByteString ArtifactPackaging

instance Prelude.ToQuery ArtifactPackaging

instance Prelude.ToHeader ArtifactPackaging

instance Prelude.ToJSON ArtifactPackaging where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ArtifactPackaging where
  parseJSON = Prelude.parseJSONText "ArtifactPackaging"

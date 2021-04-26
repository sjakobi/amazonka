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
-- Module      : Network.AWS.DeviceFarm.Types.ArtifactCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ArtifactCategory
  ( ArtifactCategory
      ( ..,
        ArtifactCategoryFILE,
        ArtifactCategoryLOG,
        ArtifactCategorySCREENSHOT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ArtifactCategory = ArtifactCategory'
  { fromArtifactCategory ::
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

pattern ArtifactCategoryFILE :: ArtifactCategory
pattern ArtifactCategoryFILE = ArtifactCategory' "FILE"

pattern ArtifactCategoryLOG :: ArtifactCategory
pattern ArtifactCategoryLOG = ArtifactCategory' "LOG"

pattern ArtifactCategorySCREENSHOT :: ArtifactCategory
pattern ArtifactCategorySCREENSHOT = ArtifactCategory' "SCREENSHOT"

{-# COMPLETE
  ArtifactCategoryFILE,
  ArtifactCategoryLOG,
  ArtifactCategorySCREENSHOT,
  ArtifactCategory'
  #-}

instance Prelude.FromText ArtifactCategory where
  parser = ArtifactCategory' Prelude.<$> Prelude.takeText

instance Prelude.ToText ArtifactCategory where
  toText (ArtifactCategory' x) = x

instance Prelude.Hashable ArtifactCategory

instance Prelude.NFData ArtifactCategory

instance Prelude.ToByteString ArtifactCategory

instance Prelude.ToQuery ArtifactCategory

instance Prelude.ToHeader ArtifactCategory

instance Prelude.ToJSON ArtifactCategory where
  toJSON = Prelude.toJSONText

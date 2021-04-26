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
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionArtifactCategory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSessionArtifactCategory
  ( TestGridSessionArtifactCategory
      ( ..,
        TestGridSessionArtifactCategoryLOG,
        TestGridSessionArtifactCategoryVIDEO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TestGridSessionArtifactCategory = TestGridSessionArtifactCategory'
  { fromTestGridSessionArtifactCategory ::
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

pattern TestGridSessionArtifactCategoryLOG :: TestGridSessionArtifactCategory
pattern TestGridSessionArtifactCategoryLOG = TestGridSessionArtifactCategory' "LOG"

pattern TestGridSessionArtifactCategoryVIDEO :: TestGridSessionArtifactCategory
pattern TestGridSessionArtifactCategoryVIDEO = TestGridSessionArtifactCategory' "VIDEO"

{-# COMPLETE
  TestGridSessionArtifactCategoryLOG,
  TestGridSessionArtifactCategoryVIDEO,
  TestGridSessionArtifactCategory'
  #-}

instance Prelude.FromText TestGridSessionArtifactCategory where
  parser = TestGridSessionArtifactCategory' Prelude.<$> Prelude.takeText

instance Prelude.ToText TestGridSessionArtifactCategory where
  toText (TestGridSessionArtifactCategory' x) = x

instance Prelude.Hashable TestGridSessionArtifactCategory

instance Prelude.NFData TestGridSessionArtifactCategory

instance Prelude.ToByteString TestGridSessionArtifactCategory

instance Prelude.ToQuery TestGridSessionArtifactCategory

instance Prelude.ToHeader TestGridSessionArtifactCategory

instance Prelude.ToJSON TestGridSessionArtifactCategory where
  toJSON = Prelude.toJSONText

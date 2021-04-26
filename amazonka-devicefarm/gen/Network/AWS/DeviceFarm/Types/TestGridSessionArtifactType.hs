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
-- Module      : Network.AWS.DeviceFarm.Types.TestGridSessionArtifactType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.TestGridSessionArtifactType
  ( TestGridSessionArtifactType
      ( ..,
        TestGridSessionArtifactTypeSELENIUMLOG,
        TestGridSessionArtifactTypeUNKNOWN,
        TestGridSessionArtifactTypeVIDEO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TestGridSessionArtifactType = TestGridSessionArtifactType'
  { fromTestGridSessionArtifactType ::
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

pattern TestGridSessionArtifactTypeSELENIUMLOG :: TestGridSessionArtifactType
pattern TestGridSessionArtifactTypeSELENIUMLOG = TestGridSessionArtifactType' "SELENIUM_LOG"

pattern TestGridSessionArtifactTypeUNKNOWN :: TestGridSessionArtifactType
pattern TestGridSessionArtifactTypeUNKNOWN = TestGridSessionArtifactType' "UNKNOWN"

pattern TestGridSessionArtifactTypeVIDEO :: TestGridSessionArtifactType
pattern TestGridSessionArtifactTypeVIDEO = TestGridSessionArtifactType' "VIDEO"

{-# COMPLETE
  TestGridSessionArtifactTypeSELENIUMLOG,
  TestGridSessionArtifactTypeUNKNOWN,
  TestGridSessionArtifactTypeVIDEO,
  TestGridSessionArtifactType'
  #-}

instance Prelude.FromText TestGridSessionArtifactType where
  parser = TestGridSessionArtifactType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TestGridSessionArtifactType where
  toText (TestGridSessionArtifactType' x) = x

instance Prelude.Hashable TestGridSessionArtifactType

instance Prelude.NFData TestGridSessionArtifactType

instance Prelude.ToByteString TestGridSessionArtifactType

instance Prelude.ToQuery TestGridSessionArtifactType

instance Prelude.ToHeader TestGridSessionArtifactType

instance Prelude.FromJSON TestGridSessionArtifactType where
  parseJSON = Prelude.parseJSONText "TestGridSessionArtifactType"

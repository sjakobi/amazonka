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
-- Module      : Network.AWS.MediaConvert.Types.HlsDirectoryStructure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsDirectoryStructure
  ( HlsDirectoryStructure
      ( ..,
        HlsDirectoryStructureSINGLEDIRECTORY,
        HlsDirectoryStructureSUBDIRECTORYPERSTREAM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Indicates whether segments should be placed in subdirectories.
newtype HlsDirectoryStructure = HlsDirectoryStructure'
  { fromHlsDirectoryStructure ::
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

pattern HlsDirectoryStructureSINGLEDIRECTORY :: HlsDirectoryStructure
pattern HlsDirectoryStructureSINGLEDIRECTORY = HlsDirectoryStructure' "SINGLE_DIRECTORY"

pattern HlsDirectoryStructureSUBDIRECTORYPERSTREAM :: HlsDirectoryStructure
pattern HlsDirectoryStructureSUBDIRECTORYPERSTREAM = HlsDirectoryStructure' "SUBDIRECTORY_PER_STREAM"

{-# COMPLETE
  HlsDirectoryStructureSINGLEDIRECTORY,
  HlsDirectoryStructureSUBDIRECTORYPERSTREAM,
  HlsDirectoryStructure'
  #-}

instance Prelude.FromText HlsDirectoryStructure where
  parser = HlsDirectoryStructure' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsDirectoryStructure where
  toText (HlsDirectoryStructure' x) = x

instance Prelude.Hashable HlsDirectoryStructure

instance Prelude.NFData HlsDirectoryStructure

instance Prelude.ToByteString HlsDirectoryStructure

instance Prelude.ToQuery HlsDirectoryStructure

instance Prelude.ToHeader HlsDirectoryStructure

instance Prelude.ToJSON HlsDirectoryStructure where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsDirectoryStructure where
  parseJSON = Prelude.parseJSONText "HlsDirectoryStructure"

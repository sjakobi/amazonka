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
-- Module      : Network.AWS.CodeCommit.Types.FileModeTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.FileModeTypeEnum
  ( FileModeTypeEnum
      ( ..,
        FileModeTypeEnumEXECUTABLE,
        FileModeTypeEnumNORMAL,
        FileModeTypeEnumSYMLINK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FileModeTypeEnum = FileModeTypeEnum'
  { fromFileModeTypeEnum ::
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

pattern FileModeTypeEnumEXECUTABLE :: FileModeTypeEnum
pattern FileModeTypeEnumEXECUTABLE = FileModeTypeEnum' "EXECUTABLE"

pattern FileModeTypeEnumNORMAL :: FileModeTypeEnum
pattern FileModeTypeEnumNORMAL = FileModeTypeEnum' "NORMAL"

pattern FileModeTypeEnumSYMLINK :: FileModeTypeEnum
pattern FileModeTypeEnumSYMLINK = FileModeTypeEnum' "SYMLINK"

{-# COMPLETE
  FileModeTypeEnumEXECUTABLE,
  FileModeTypeEnumNORMAL,
  FileModeTypeEnumSYMLINK,
  FileModeTypeEnum'
  #-}

instance Prelude.FromText FileModeTypeEnum where
  parser = FileModeTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText FileModeTypeEnum where
  toText (FileModeTypeEnum' x) = x

instance Prelude.Hashable FileModeTypeEnum

instance Prelude.NFData FileModeTypeEnum

instance Prelude.ToByteString FileModeTypeEnum

instance Prelude.ToQuery FileModeTypeEnum

instance Prelude.ToHeader FileModeTypeEnum

instance Prelude.ToJSON FileModeTypeEnum where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FileModeTypeEnum where
  parseJSON = Prelude.parseJSONText "FileModeTypeEnum"

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
-- Module      : Network.AWS.SageMaker.Types.FileSystemAccessMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FileSystemAccessMode
  ( FileSystemAccessMode
      ( ..,
        FileSystemAccessModeRO,
        FileSystemAccessModeRW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FileSystemAccessMode = FileSystemAccessMode'
  { fromFileSystemAccessMode ::
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

pattern FileSystemAccessModeRO :: FileSystemAccessMode
pattern FileSystemAccessModeRO = FileSystemAccessMode' "ro"

pattern FileSystemAccessModeRW :: FileSystemAccessMode
pattern FileSystemAccessModeRW = FileSystemAccessMode' "rw"

{-# COMPLETE
  FileSystemAccessModeRO,
  FileSystemAccessModeRW,
  FileSystemAccessMode'
  #-}

instance Prelude.FromText FileSystemAccessMode where
  parser = FileSystemAccessMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText FileSystemAccessMode where
  toText (FileSystemAccessMode' x) = x

instance Prelude.Hashable FileSystemAccessMode

instance Prelude.NFData FileSystemAccessMode

instance Prelude.ToByteString FileSystemAccessMode

instance Prelude.ToQuery FileSystemAccessMode

instance Prelude.ToHeader FileSystemAccessMode

instance Prelude.ToJSON FileSystemAccessMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FileSystemAccessMode where
  parseJSON = Prelude.parseJSONText "FileSystemAccessMode"

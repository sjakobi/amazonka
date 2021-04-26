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
-- Module      : Network.AWS.SageMaker.Types.FileSystemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FileSystemType
  ( FileSystemType
      ( ..,
        FileSystemTypeEFS,
        FileSystemTypeFSxLustre
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FileSystemType = FileSystemType'
  { fromFileSystemType ::
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

pattern FileSystemTypeEFS :: FileSystemType
pattern FileSystemTypeEFS = FileSystemType' "EFS"

pattern FileSystemTypeFSxLustre :: FileSystemType
pattern FileSystemTypeFSxLustre = FileSystemType' "FSxLustre"

{-# COMPLETE
  FileSystemTypeEFS,
  FileSystemTypeFSxLustre,
  FileSystemType'
  #-}

instance Prelude.FromText FileSystemType where
  parser = FileSystemType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FileSystemType where
  toText (FileSystemType' x) = x

instance Prelude.Hashable FileSystemType

instance Prelude.NFData FileSystemType

instance Prelude.ToByteString FileSystemType

instance Prelude.ToQuery FileSystemType

instance Prelude.ToHeader FileSystemType

instance Prelude.ToJSON FileSystemType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FileSystemType where
  parseJSON = Prelude.parseJSONText "FileSystemType"

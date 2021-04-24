{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Executable,
        Normal,
        Symlink
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FileModeTypeEnum = FileModeTypeEnum' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Executable :: FileModeTypeEnum
pattern Executable = FileModeTypeEnum' "EXECUTABLE"

pattern Normal :: FileModeTypeEnum
pattern Normal = FileModeTypeEnum' "NORMAL"

pattern Symlink :: FileModeTypeEnum
pattern Symlink = FileModeTypeEnum' "SYMLINK"

{-# COMPLETE
  Executable,
  Normal,
  Symlink,
  FileModeTypeEnum'
  #-}

instance FromText FileModeTypeEnum where
  parser = (FileModeTypeEnum' . mk) <$> takeText

instance ToText FileModeTypeEnum where
  toText (FileModeTypeEnum' ci) = original ci

instance Hashable FileModeTypeEnum

instance NFData FileModeTypeEnum

instance ToByteString FileModeTypeEnum

instance ToQuery FileModeTypeEnum

instance ToHeader FileModeTypeEnum

instance ToJSON FileModeTypeEnum where
  toJSON = toJSONText

instance FromJSON FileModeTypeEnum where
  parseJSON = parseJSONText "FileModeTypeEnum"

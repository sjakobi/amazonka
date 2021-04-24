{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        RO,
        RW
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FileSystemAccessMode
  = FileSystemAccessMode'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RO :: FileSystemAccessMode
pattern RO = FileSystemAccessMode' "ro"

pattern RW :: FileSystemAccessMode
pattern RW = FileSystemAccessMode' "rw"

{-# COMPLETE
  RO,
  RW,
  FileSystemAccessMode'
  #-}

instance FromText FileSystemAccessMode where
  parser = (FileSystemAccessMode' . mk) <$> takeText

instance ToText FileSystemAccessMode where
  toText (FileSystemAccessMode' ci) = original ci

instance Hashable FileSystemAccessMode

instance NFData FileSystemAccessMode

instance ToByteString FileSystemAccessMode

instance ToQuery FileSystemAccessMode

instance ToHeader FileSystemAccessMode

instance ToJSON FileSystemAccessMode where
  toJSON = toJSONText

instance FromJSON FileSystemAccessMode where
  parseJSON = parseJSONText "FileSystemAccessMode"

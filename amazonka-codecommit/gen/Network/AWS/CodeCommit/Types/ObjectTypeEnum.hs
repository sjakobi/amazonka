{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeCommit.Types.ObjectTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ObjectTypeEnum
  ( ObjectTypeEnum
      ( ..,
        Directory,
        File,
        GitLink,
        SymbolicLink
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ObjectTypeEnum = ObjectTypeEnum' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Directory :: ObjectTypeEnum
pattern Directory = ObjectTypeEnum' "DIRECTORY"

pattern File :: ObjectTypeEnum
pattern File = ObjectTypeEnum' "FILE"

pattern GitLink :: ObjectTypeEnum
pattern GitLink = ObjectTypeEnum' "GIT_LINK"

pattern SymbolicLink :: ObjectTypeEnum
pattern SymbolicLink = ObjectTypeEnum' "SYMBOLIC_LINK"

{-# COMPLETE
  Directory,
  File,
  GitLink,
  SymbolicLink,
  ObjectTypeEnum'
  #-}

instance FromText ObjectTypeEnum where
  parser = (ObjectTypeEnum' . mk) <$> takeText

instance ToText ObjectTypeEnum where
  toText (ObjectTypeEnum' ci) = original ci

instance Hashable ObjectTypeEnum

instance NFData ObjectTypeEnum

instance ToByteString ObjectTypeEnum

instance ToQuery ObjectTypeEnum

instance ToHeader ObjectTypeEnum

instance FromJSON ObjectTypeEnum where
  parseJSON = parseJSONText "ObjectTypeEnum"

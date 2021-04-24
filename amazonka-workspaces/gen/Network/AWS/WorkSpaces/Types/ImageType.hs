{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.ImageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.ImageType
  ( ImageType
      ( ..,
        Owned,
        Shared
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ImageType = ImageType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Owned :: ImageType
pattern Owned = ImageType' "OWNED"

pattern Shared :: ImageType
pattern Shared = ImageType' "SHARED"

{-# COMPLETE
  Owned,
  Shared,
  ImageType'
  #-}

instance FromText ImageType where
  parser = (ImageType' . mk) <$> takeText

instance ToText ImageType where
  toText (ImageType' ci) = original ci

instance Hashable ImageType

instance NFData ImageType

instance ToByteString ImageType

instance ToQuery ImageType

instance ToHeader ImageType

instance ToJSON ImageType where
  toJSON = toJSONText

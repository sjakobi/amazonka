{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.DirectorySize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DirectorySize
  ( DirectorySize
      ( ..,
        Large,
        Small
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DirectorySize = DirectorySize' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Large :: DirectorySize
pattern Large = DirectorySize' "Large"

pattern Small :: DirectorySize
pattern Small = DirectorySize' "Small"

{-# COMPLETE
  Large,
  Small,
  DirectorySize'
  #-}

instance FromText DirectorySize where
  parser = (DirectorySize' . mk) <$> takeText

instance ToText DirectorySize where
  toText (DirectorySize' ci) = original ci

instance Hashable DirectorySize

instance NFData DirectorySize

instance ToByteString DirectorySize

instance ToQuery DirectorySize

instance ToHeader DirectorySize

instance ToJSON DirectorySize where
  toJSON = toJSONText

instance FromJSON DirectorySize where
  parseJSON = parseJSONText "DirectorySize"

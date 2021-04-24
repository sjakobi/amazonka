{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AppImageConfigSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppImageConfigSortKey
  ( AppImageConfigSortKey
      ( ..,
        AICSKCreationTime,
        AICSKLastModifiedTime,
        AICSKName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppImageConfigSortKey
  = AppImageConfigSortKey'
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

pattern AICSKCreationTime :: AppImageConfigSortKey
pattern AICSKCreationTime = AppImageConfigSortKey' "CreationTime"

pattern AICSKLastModifiedTime :: AppImageConfigSortKey
pattern AICSKLastModifiedTime = AppImageConfigSortKey' "LastModifiedTime"

pattern AICSKName :: AppImageConfigSortKey
pattern AICSKName = AppImageConfigSortKey' "Name"

{-# COMPLETE
  AICSKCreationTime,
  AICSKLastModifiedTime,
  AICSKName,
  AppImageConfigSortKey'
  #-}

instance FromText AppImageConfigSortKey where
  parser = (AppImageConfigSortKey' . mk) <$> takeText

instance ToText AppImageConfigSortKey where
  toText (AppImageConfigSortKey' ci) = original ci

instance Hashable AppImageConfigSortKey

instance NFData AppImageConfigSortKey

instance ToByteString AppImageConfigSortKey

instance ToQuery AppImageConfigSortKey

instance ToHeader AppImageConfigSortKey

instance ToJSON AppImageConfigSortKey where
  toJSON = toJSONText

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.ApplicationRevisionSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.ApplicationRevisionSortBy
  ( ApplicationRevisionSortBy
      ( ..,
        FirstUsedTime,
        LastUsedTime,
        RegisterTime
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ApplicationRevisionSortBy
  = ApplicationRevisionSortBy'
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

pattern FirstUsedTime :: ApplicationRevisionSortBy
pattern FirstUsedTime = ApplicationRevisionSortBy' "firstUsedTime"

pattern LastUsedTime :: ApplicationRevisionSortBy
pattern LastUsedTime = ApplicationRevisionSortBy' "lastUsedTime"

pattern RegisterTime :: ApplicationRevisionSortBy
pattern RegisterTime = ApplicationRevisionSortBy' "registerTime"

{-# COMPLETE
  FirstUsedTime,
  LastUsedTime,
  RegisterTime,
  ApplicationRevisionSortBy'
  #-}

instance FromText ApplicationRevisionSortBy where
  parser = (ApplicationRevisionSortBy' . mk) <$> takeText

instance ToText ApplicationRevisionSortBy where
  toText (ApplicationRevisionSortBy' ci) = original ci

instance Hashable ApplicationRevisionSortBy

instance NFData ApplicationRevisionSortBy

instance ToByteString ApplicationRevisionSortBy

instance ToQuery ApplicationRevisionSortBy

instance ToHeader ApplicationRevisionSortBy

instance ToJSON ApplicationRevisionSortBy where
  toJSON = toJSONText

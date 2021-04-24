{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ProjectSortByType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ProjectSortByType
  ( ProjectSortByType
      ( ..,
        CreatedTime,
        LastModifiedTime,
        Name
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProjectSortByType = ProjectSortByType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreatedTime :: ProjectSortByType
pattern CreatedTime = ProjectSortByType' "CREATED_TIME"

pattern LastModifiedTime :: ProjectSortByType
pattern LastModifiedTime = ProjectSortByType' "LAST_MODIFIED_TIME"

pattern Name :: ProjectSortByType
pattern Name = ProjectSortByType' "NAME"

{-# COMPLETE
  CreatedTime,
  LastModifiedTime,
  Name,
  ProjectSortByType'
  #-}

instance FromText ProjectSortByType where
  parser = (ProjectSortByType' . mk) <$> takeText

instance ToText ProjectSortByType where
  toText (ProjectSortByType' ci) = original ci

instance Hashable ProjectSortByType

instance NFData ProjectSortByType

instance ToByteString ProjectSortByType

instance ToQuery ProjectSortByType

instance ToHeader ProjectSortByType

instance ToJSON ProjectSortByType where
  toJSON = toJSONText

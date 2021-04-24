{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProjectSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProjectSortBy
  ( ProjectSortBy
      ( ..,
        PSBCreationTime,
        PSBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProjectSortBy = ProjectSortBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PSBCreationTime :: ProjectSortBy
pattern PSBCreationTime = ProjectSortBy' "CreationTime"

pattern PSBName :: ProjectSortBy
pattern PSBName = ProjectSortBy' "Name"

{-# COMPLETE
  PSBCreationTime,
  PSBName,
  ProjectSortBy'
  #-}

instance FromText ProjectSortBy where
  parser = (ProjectSortBy' . mk) <$> takeText

instance ToText ProjectSortBy where
  toText (ProjectSortBy' ci) = original ci

instance Hashable ProjectSortBy

instance NFData ProjectSortBy

instance ToByteString ProjectSortBy

instance ToQuery ProjectSortBy

instance ToHeader ProjectSortBy

instance ToJSON ProjectSortBy where
  toJSON = toJSONText

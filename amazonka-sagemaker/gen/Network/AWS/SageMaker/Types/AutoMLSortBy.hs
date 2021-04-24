{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AutoMLSortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLSortBy
  ( AutoMLSortBy
      ( ..,
        CreationTime,
        Name,
        Status
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AutoMLSortBy = AutoMLSortBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreationTime :: AutoMLSortBy
pattern CreationTime = AutoMLSortBy' "CreationTime"

pattern Name :: AutoMLSortBy
pattern Name = AutoMLSortBy' "Name"

pattern Status :: AutoMLSortBy
pattern Status = AutoMLSortBy' "Status"

{-# COMPLETE
  CreationTime,
  Name,
  Status,
  AutoMLSortBy'
  #-}

instance FromText AutoMLSortBy where
  parser = (AutoMLSortBy' . mk) <$> takeText

instance ToText AutoMLSortBy where
  toText (AutoMLSortBy' ci) = original ci

instance Hashable AutoMLSortBy

instance NFData AutoMLSortBy

instance ToByteString AutoMLSortBy

instance ToQuery AutoMLSortBy

instance ToHeader AutoMLSortBy

instance ToJSON AutoMLSortBy where
  toJSON = toJSONText

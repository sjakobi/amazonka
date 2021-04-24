{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SortPipelinesBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortPipelinesBy
  ( SortPipelinesBy
      ( ..,
        SPBCreationTime,
        SPBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortPipelinesBy = SortPipelinesBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SPBCreationTime :: SortPipelinesBy
pattern SPBCreationTime = SortPipelinesBy' "CreationTime"

pattern SPBName :: SortPipelinesBy
pattern SPBName = SortPipelinesBy' "Name"

{-# COMPLETE
  SPBCreationTime,
  SPBName,
  SortPipelinesBy'
  #-}

instance FromText SortPipelinesBy where
  parser = (SortPipelinesBy' . mk) <$> takeText

instance ToText SortPipelinesBy where
  toText (SortPipelinesBy' ci) = original ci

instance Hashable SortPipelinesBy

instance NFData SortPipelinesBy

instance ToByteString SortPipelinesBy

instance ToQuery SortPipelinesBy

instance ToHeader SortPipelinesBy

instance ToJSON SortPipelinesBy where
  toJSON = toJSONText

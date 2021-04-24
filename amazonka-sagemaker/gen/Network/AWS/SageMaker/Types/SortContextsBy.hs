{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SortContextsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortContextsBy
  ( SortContextsBy
      ( ..,
        SCBCreationTime,
        SCBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortContextsBy = SortContextsBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SCBCreationTime :: SortContextsBy
pattern SCBCreationTime = SortContextsBy' "CreationTime"

pattern SCBName :: SortContextsBy
pattern SCBName = SortContextsBy' "Name"

{-# COMPLETE
  SCBCreationTime,
  SCBName,
  SortContextsBy'
  #-}

instance FromText SortContextsBy where
  parser = (SortContextsBy' . mk) <$> takeText

instance ToText SortContextsBy where
  toText (SortContextsBy' ci) = original ci

instance Hashable SortContextsBy

instance NFData SortContextsBy

instance ToByteString SortContextsBy

instance ToQuery SortContextsBy

instance ToHeader SortContextsBy

instance ToJSON SortContextsBy where
  toJSON = toJSONText

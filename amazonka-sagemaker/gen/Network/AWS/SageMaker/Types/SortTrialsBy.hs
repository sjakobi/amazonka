{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SortTrialsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortTrialsBy
  ( SortTrialsBy
      ( ..,
        STBCreationTime,
        STBName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortTrialsBy = SortTrialsBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern STBCreationTime :: SortTrialsBy
pattern STBCreationTime = SortTrialsBy' "CreationTime"

pattern STBName :: SortTrialsBy
pattern STBName = SortTrialsBy' "Name"

{-# COMPLETE
  STBCreationTime,
  STBName,
  SortTrialsBy'
  #-}

instance FromText SortTrialsBy where
  parser = (SortTrialsBy' . mk) <$> takeText

instance ToText SortTrialsBy where
  toText (SortTrialsBy' ci) = original ci

instance Hashable SortTrialsBy

instance NFData SortTrialsBy

instance ToByteString SortTrialsBy

instance ToQuery SortTrialsBy

instance ToHeader SortTrialsBy

instance ToJSON SortTrialsBy where
  toJSON = toJSONText

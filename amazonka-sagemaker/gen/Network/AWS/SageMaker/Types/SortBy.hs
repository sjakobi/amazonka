{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SortBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortBy
  ( SortBy
      ( ..,
        SBCreationTime,
        SBName,
        SBStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortBy = SortBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SBCreationTime :: SortBy
pattern SBCreationTime = SortBy' "CreationTime"

pattern SBName :: SortBy
pattern SBName = SortBy' "Name"

pattern SBStatus :: SortBy
pattern SBStatus = SortBy' "Status"

{-# COMPLETE
  SBCreationTime,
  SBName,
  SBStatus,
  SortBy'
  #-}

instance FromText SortBy where
  parser = (SortBy' . mk) <$> takeText

instance ToText SortBy where
  toText (SortBy' ci) = original ci

instance Hashable SortBy

instance NFData SortBy

instance ToByteString SortBy

instance ToQuery SortBy

instance ToHeader SortBy

instance ToJSON SortBy where
  toJSON = toJSONText

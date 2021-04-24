{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SortAssociationsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortAssociationsBy
  ( SortAssociationsBy
      ( ..,
        SorCreationTime,
        SorDestinationARN,
        SorDestinationType,
        SorSourceARN,
        SorSourceType
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortAssociationsBy
  = SortAssociationsBy'
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

pattern SorCreationTime :: SortAssociationsBy
pattern SorCreationTime = SortAssociationsBy' "CreationTime"

pattern SorDestinationARN :: SortAssociationsBy
pattern SorDestinationARN = SortAssociationsBy' "DestinationArn"

pattern SorDestinationType :: SortAssociationsBy
pattern SorDestinationType = SortAssociationsBy' "DestinationType"

pattern SorSourceARN :: SortAssociationsBy
pattern SorSourceARN = SortAssociationsBy' "SourceArn"

pattern SorSourceType :: SortAssociationsBy
pattern SorSourceType = SortAssociationsBy' "SourceType"

{-# COMPLETE
  SorCreationTime,
  SorDestinationARN,
  SorDestinationType,
  SorSourceARN,
  SorSourceType,
  SortAssociationsBy'
  #-}

instance FromText SortAssociationsBy where
  parser = (SortAssociationsBy' . mk) <$> takeText

instance ToText SortAssociationsBy where
  toText (SortAssociationsBy' ci) = original ci

instance Hashable SortAssociationsBy

instance NFData SortAssociationsBy

instance ToByteString SortAssociationsBy

instance ToQuery SortAssociationsBy

instance ToHeader SortAssociationsBy

instance ToJSON SortAssociationsBy where
  toJSON = toJSONText

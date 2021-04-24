{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EndpointSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EndpointSortKey
  ( EndpointSortKey
      ( ..,
        ESKCreationTime,
        ESKName,
        ESKStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EndpointSortKey = EndpointSortKey' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ESKCreationTime :: EndpointSortKey
pattern ESKCreationTime = EndpointSortKey' "CreationTime"

pattern ESKName :: EndpointSortKey
pattern ESKName = EndpointSortKey' "Name"

pattern ESKStatus :: EndpointSortKey
pattern ESKStatus = EndpointSortKey' "Status"

{-# COMPLETE
  ESKCreationTime,
  ESKName,
  ESKStatus,
  EndpointSortKey'
  #-}

instance FromText EndpointSortKey where
  parser = (EndpointSortKey' . mk) <$> takeText

instance ToText EndpointSortKey where
  toText (EndpointSortKey' ci) = original ci

instance Hashable EndpointSortKey

instance NFData EndpointSortKey

instance ToByteString EndpointSortKey

instance ToQuery EndpointSortKey

instance ToHeader EndpointSortKey

instance ToJSON EndpointSortKey where
  toJSON = toJSONText

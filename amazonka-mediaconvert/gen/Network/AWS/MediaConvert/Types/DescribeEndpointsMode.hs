{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.DescribeEndpointsMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DescribeEndpointsMode
  ( DescribeEndpointsMode
      ( ..,
        DEMDefault,
        DEMGetOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.
data DescribeEndpointsMode
  = DescribeEndpointsMode'
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

pattern DEMDefault :: DescribeEndpointsMode
pattern DEMDefault = DescribeEndpointsMode' "DEFAULT"

pattern DEMGetOnly :: DescribeEndpointsMode
pattern DEMGetOnly = DescribeEndpointsMode' "GET_ONLY"

{-# COMPLETE
  DEMDefault,
  DEMGetOnly,
  DescribeEndpointsMode'
  #-}

instance FromText DescribeEndpointsMode where
  parser = (DescribeEndpointsMode' . mk) <$> takeText

instance ToText DescribeEndpointsMode where
  toText (DescribeEndpointsMode' ci) = original ci

instance Hashable DescribeEndpointsMode

instance NFData DescribeEndpointsMode

instance ToByteString DescribeEndpointsMode

instance ToQuery DescribeEndpointsMode

instance ToHeader DescribeEndpointsMode

instance ToJSON DescribeEndpointsMode where
  toJSON = toJSONText

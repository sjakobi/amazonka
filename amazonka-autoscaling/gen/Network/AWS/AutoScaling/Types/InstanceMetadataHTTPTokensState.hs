{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.InstanceMetadataHTTPTokensState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstanceMetadataHTTPTokensState
  ( InstanceMetadataHTTPTokensState
      ( ..,
        Optional,
        Required
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstanceMetadataHTTPTokensState
  = InstanceMetadataHTTPTokensState'
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

pattern Optional :: InstanceMetadataHTTPTokensState
pattern Optional = InstanceMetadataHTTPTokensState' "optional"

pattern Required :: InstanceMetadataHTTPTokensState
pattern Required = InstanceMetadataHTTPTokensState' "required"

{-# COMPLETE
  Optional,
  Required,
  InstanceMetadataHTTPTokensState'
  #-}

instance FromText InstanceMetadataHTTPTokensState where
  parser = (InstanceMetadataHTTPTokensState' . mk) <$> takeText

instance ToText InstanceMetadataHTTPTokensState where
  toText (InstanceMetadataHTTPTokensState' ci) = original ci

instance Hashable InstanceMetadataHTTPTokensState

instance NFData InstanceMetadataHTTPTokensState

instance ToByteString InstanceMetadataHTTPTokensState

instance ToQuery InstanceMetadataHTTPTokensState

instance ToHeader InstanceMetadataHTTPTokensState

instance FromXML InstanceMetadataHTTPTokensState where
  parseXML = parseXMLText "InstanceMetadataHTTPTokensState"

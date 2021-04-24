{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.NodeUpdateInitiatedBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.NodeUpdateInitiatedBy
  ( NodeUpdateInitiatedBy
      ( ..,
        Customer,
        System
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NodeUpdateInitiatedBy
  = NodeUpdateInitiatedBy'
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

pattern Customer :: NodeUpdateInitiatedBy
pattern Customer = NodeUpdateInitiatedBy' "customer"

pattern System :: NodeUpdateInitiatedBy
pattern System = NodeUpdateInitiatedBy' "system"

{-# COMPLETE
  Customer,
  System,
  NodeUpdateInitiatedBy'
  #-}

instance FromText NodeUpdateInitiatedBy where
  parser = (NodeUpdateInitiatedBy' . mk) <$> takeText

instance ToText NodeUpdateInitiatedBy where
  toText (NodeUpdateInitiatedBy' ci) = original ci

instance Hashable NodeUpdateInitiatedBy

instance NFData NodeUpdateInitiatedBy

instance ToByteString NodeUpdateInitiatedBy

instance ToQuery NodeUpdateInitiatedBy

instance ToHeader NodeUpdateInitiatedBy

instance FromXML NodeUpdateInitiatedBy where
  parseXML = parseXMLText "NodeUpdateInitiatedBy"

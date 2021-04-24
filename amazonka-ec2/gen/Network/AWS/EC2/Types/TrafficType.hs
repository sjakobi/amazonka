{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TrafficType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficType
  ( TrafficType
      ( ..,
        TTAccept,
        TTAll,
        TTReject
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data TrafficType = TrafficType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TTAccept :: TrafficType
pattern TTAccept = TrafficType' "ACCEPT"

pattern TTAll :: TrafficType
pattern TTAll = TrafficType' "ALL"

pattern TTReject :: TrafficType
pattern TTReject = TrafficType' "REJECT"

{-# COMPLETE
  TTAccept,
  TTAll,
  TTReject,
  TrafficType'
  #-}

instance FromText TrafficType where
  parser = (TrafficType' . mk) <$> takeText

instance ToText TrafficType where
  toText (TrafficType' ci) = original ci

instance Hashable TrafficType

instance NFData TrafficType

instance ToByteString TrafficType

instance ToQuery TrafficType

instance ToHeader TrafficType

instance FromXML TrafficType where
  parseXML = parseXMLText "TrafficType"

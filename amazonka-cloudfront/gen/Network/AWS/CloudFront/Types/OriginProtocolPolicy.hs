{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.OriginProtocolPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.OriginProtocolPolicy
  ( OriginProtocolPolicy
      ( ..,
        HTTPOnly,
        HTTPSOnly,
        MatchViewer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OriginProtocolPolicy
  = OriginProtocolPolicy'
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

pattern HTTPOnly :: OriginProtocolPolicy
pattern HTTPOnly = OriginProtocolPolicy' "http-only"

pattern HTTPSOnly :: OriginProtocolPolicy
pattern HTTPSOnly = OriginProtocolPolicy' "https-only"

pattern MatchViewer :: OriginProtocolPolicy
pattern MatchViewer = OriginProtocolPolicy' "match-viewer"

{-# COMPLETE
  HTTPOnly,
  HTTPSOnly,
  MatchViewer,
  OriginProtocolPolicy'
  #-}

instance FromText OriginProtocolPolicy where
  parser = (OriginProtocolPolicy' . mk) <$> takeText

instance ToText OriginProtocolPolicy where
  toText (OriginProtocolPolicy' ci) = original ci

instance Hashable OriginProtocolPolicy

instance NFData OriginProtocolPolicy

instance ToByteString OriginProtocolPolicy

instance ToQuery OriginProtocolPolicy

instance ToHeader OriginProtocolPolicy

instance FromXML OriginProtocolPolicy where
  parseXML = parseXMLText "OriginProtocolPolicy"

instance ToXML OriginProtocolPolicy where
  toXML = toXMLText

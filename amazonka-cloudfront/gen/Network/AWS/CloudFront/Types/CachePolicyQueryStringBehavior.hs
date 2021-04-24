{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CachePolicyQueryStringBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyQueryStringBehavior
  ( CachePolicyQueryStringBehavior
      ( ..,
        CPQSBAll,
        CPQSBAllExcept,
        CPQSBNone,
        CPQSBWhitelist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CachePolicyQueryStringBehavior
  = CachePolicyQueryStringBehavior'
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

pattern CPQSBAll :: CachePolicyQueryStringBehavior
pattern CPQSBAll = CachePolicyQueryStringBehavior' "all"

pattern CPQSBAllExcept :: CachePolicyQueryStringBehavior
pattern CPQSBAllExcept = CachePolicyQueryStringBehavior' "allExcept"

pattern CPQSBNone :: CachePolicyQueryStringBehavior
pattern CPQSBNone = CachePolicyQueryStringBehavior' "none"

pattern CPQSBWhitelist :: CachePolicyQueryStringBehavior
pattern CPQSBWhitelist = CachePolicyQueryStringBehavior' "whitelist"

{-# COMPLETE
  CPQSBAll,
  CPQSBAllExcept,
  CPQSBNone,
  CPQSBWhitelist,
  CachePolicyQueryStringBehavior'
  #-}

instance FromText CachePolicyQueryStringBehavior where
  parser = (CachePolicyQueryStringBehavior' . mk) <$> takeText

instance ToText CachePolicyQueryStringBehavior where
  toText (CachePolicyQueryStringBehavior' ci) = original ci

instance Hashable CachePolicyQueryStringBehavior

instance NFData CachePolicyQueryStringBehavior

instance ToByteString CachePolicyQueryStringBehavior

instance ToQuery CachePolicyQueryStringBehavior

instance ToHeader CachePolicyQueryStringBehavior

instance FromXML CachePolicyQueryStringBehavior where
  parseXML = parseXMLText "CachePolicyQueryStringBehavior"

instance ToXML CachePolicyQueryStringBehavior where
  toXML = toXMLText

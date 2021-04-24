{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CachePolicyCookieBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyCookieBehavior
  ( CachePolicyCookieBehavior
      ( ..,
        CPCBAll,
        CPCBAllExcept,
        CPCBNone,
        CPCBWhitelist
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CachePolicyCookieBehavior
  = CachePolicyCookieBehavior'
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

pattern CPCBAll :: CachePolicyCookieBehavior
pattern CPCBAll = CachePolicyCookieBehavior' "all"

pattern CPCBAllExcept :: CachePolicyCookieBehavior
pattern CPCBAllExcept = CachePolicyCookieBehavior' "allExcept"

pattern CPCBNone :: CachePolicyCookieBehavior
pattern CPCBNone = CachePolicyCookieBehavior' "none"

pattern CPCBWhitelist :: CachePolicyCookieBehavior
pattern CPCBWhitelist = CachePolicyCookieBehavior' "whitelist"

{-# COMPLETE
  CPCBAll,
  CPCBAllExcept,
  CPCBNone,
  CPCBWhitelist,
  CachePolicyCookieBehavior'
  #-}

instance FromText CachePolicyCookieBehavior where
  parser = (CachePolicyCookieBehavior' . mk) <$> takeText

instance ToText CachePolicyCookieBehavior where
  toText (CachePolicyCookieBehavior' ci) = original ci

instance Hashable CachePolicyCookieBehavior

instance NFData CachePolicyCookieBehavior

instance ToByteString CachePolicyCookieBehavior

instance ToQuery CachePolicyCookieBehavior

instance ToHeader CachePolicyCookieBehavior

instance FromXML CachePolicyCookieBehavior where
  parseXML = parseXMLText "CachePolicyCookieBehavior"

instance ToXML CachePolicyCookieBehavior where
  toXML = toXMLText

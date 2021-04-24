{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types.TagResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.TagResourceType
  ( TagResourceType
      ( ..,
        Healthcheck,
        Hostedzone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Route53.Internal

data TagResourceType = TagResourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Healthcheck :: TagResourceType
pattern Healthcheck = TagResourceType' "healthcheck"

pattern Hostedzone :: TagResourceType
pattern Hostedzone = TagResourceType' "hostedzone"

{-# COMPLETE
  Healthcheck,
  Hostedzone,
  TagResourceType'
  #-}

instance FromText TagResourceType where
  parser = (TagResourceType' . mk) <$> takeText

instance ToText TagResourceType where
  toText (TagResourceType' ci) = original ci

instance Hashable TagResourceType

instance NFData TagResourceType

instance ToByteString TagResourceType

instance ToQuery TagResourceType

instance ToHeader TagResourceType

instance FromXML TagResourceType where
  parseXML = parseXMLText "TagResourceType"

instance ToXML TagResourceType where
  toXML = toXMLText

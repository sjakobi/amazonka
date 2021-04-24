{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.LookupAttributeKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.LookupAttributeKey
  ( LookupAttributeKey
      ( ..,
        LAKAccessKeyId,
        LAKEventId,
        LAKEventName,
        LAKEventSource,
        LAKReadOnly,
        LAKResourceName,
        LAKResourceType,
        LAKUsername
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LookupAttributeKey
  = LookupAttributeKey'
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

pattern LAKAccessKeyId :: LookupAttributeKey
pattern LAKAccessKeyId = LookupAttributeKey' "AccessKeyId"

pattern LAKEventId :: LookupAttributeKey
pattern LAKEventId = LookupAttributeKey' "EventId"

pattern LAKEventName :: LookupAttributeKey
pattern LAKEventName = LookupAttributeKey' "EventName"

pattern LAKEventSource :: LookupAttributeKey
pattern LAKEventSource = LookupAttributeKey' "EventSource"

pattern LAKReadOnly :: LookupAttributeKey
pattern LAKReadOnly = LookupAttributeKey' "ReadOnly"

pattern LAKResourceName :: LookupAttributeKey
pattern LAKResourceName = LookupAttributeKey' "ResourceName"

pattern LAKResourceType :: LookupAttributeKey
pattern LAKResourceType = LookupAttributeKey' "ResourceType"

pattern LAKUsername :: LookupAttributeKey
pattern LAKUsername = LookupAttributeKey' "Username"

{-# COMPLETE
  LAKAccessKeyId,
  LAKEventId,
  LAKEventName,
  LAKEventSource,
  LAKReadOnly,
  LAKResourceName,
  LAKResourceType,
  LAKUsername,
  LookupAttributeKey'
  #-}

instance FromText LookupAttributeKey where
  parser = (LookupAttributeKey' . mk) <$> takeText

instance ToText LookupAttributeKey where
  toText (LookupAttributeKey' ci) = original ci

instance Hashable LookupAttributeKey

instance NFData LookupAttributeKey

instance ToByteString LookupAttributeKey

instance ToQuery LookupAttributeKey

instance ToHeader LookupAttributeKey

instance ToJSON LookupAttributeKey where
  toJSON = toJSONText

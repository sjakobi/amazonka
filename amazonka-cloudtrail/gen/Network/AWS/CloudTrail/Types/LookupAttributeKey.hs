{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        LookupAttributeKeyAccessKeyId,
        LookupAttributeKeyEventId,
        LookupAttributeKeyEventName,
        LookupAttributeKeyEventSource,
        LookupAttributeKeyReadOnly,
        LookupAttributeKeyResourceName,
        LookupAttributeKeyResourceType,
        LookupAttributeKeyUsername
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LookupAttributeKey = LookupAttributeKey'
  { fromLookupAttributeKey ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern LookupAttributeKeyAccessKeyId :: LookupAttributeKey
pattern LookupAttributeKeyAccessKeyId = LookupAttributeKey' "AccessKeyId"

pattern LookupAttributeKeyEventId :: LookupAttributeKey
pattern LookupAttributeKeyEventId = LookupAttributeKey' "EventId"

pattern LookupAttributeKeyEventName :: LookupAttributeKey
pattern LookupAttributeKeyEventName = LookupAttributeKey' "EventName"

pattern LookupAttributeKeyEventSource :: LookupAttributeKey
pattern LookupAttributeKeyEventSource = LookupAttributeKey' "EventSource"

pattern LookupAttributeKeyReadOnly :: LookupAttributeKey
pattern LookupAttributeKeyReadOnly = LookupAttributeKey' "ReadOnly"

pattern LookupAttributeKeyResourceName :: LookupAttributeKey
pattern LookupAttributeKeyResourceName = LookupAttributeKey' "ResourceName"

pattern LookupAttributeKeyResourceType :: LookupAttributeKey
pattern LookupAttributeKeyResourceType = LookupAttributeKey' "ResourceType"

pattern LookupAttributeKeyUsername :: LookupAttributeKey
pattern LookupAttributeKeyUsername = LookupAttributeKey' "Username"

{-# COMPLETE
  LookupAttributeKeyAccessKeyId,
  LookupAttributeKeyEventId,
  LookupAttributeKeyEventName,
  LookupAttributeKeyEventSource,
  LookupAttributeKeyReadOnly,
  LookupAttributeKeyResourceName,
  LookupAttributeKeyResourceType,
  LookupAttributeKeyUsername,
  LookupAttributeKey'
  #-}

instance Prelude.FromText LookupAttributeKey where
  parser = LookupAttributeKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText LookupAttributeKey where
  toText (LookupAttributeKey' x) = x

instance Prelude.Hashable LookupAttributeKey

instance Prelude.NFData LookupAttributeKey

instance Prelude.ToByteString LookupAttributeKey

instance Prelude.ToQuery LookupAttributeKey

instance Prelude.ToHeader LookupAttributeKey

instance Prelude.ToJSON LookupAttributeKey where
  toJSON = Prelude.toJSONText

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SQS.Types.MessageSystemAttributeNameForSends
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types.MessageSystemAttributeNameForSends
  ( MessageSystemAttributeNameForSends
      ( ..,
        AWSTraceHeader
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MessageSystemAttributeNameForSends
  = MessageSystemAttributeNameForSends'
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

pattern AWSTraceHeader :: MessageSystemAttributeNameForSends
pattern AWSTraceHeader = MessageSystemAttributeNameForSends' "AWSTraceHeader"

{-# COMPLETE
  AWSTraceHeader,
  MessageSystemAttributeNameForSends'
  #-}

instance FromText MessageSystemAttributeNameForSends where
  parser = (MessageSystemAttributeNameForSends' . mk) <$> takeText

instance ToText MessageSystemAttributeNameForSends where
  toText (MessageSystemAttributeNameForSends' ci) = original ci

instance Hashable MessageSystemAttributeNameForSends

instance NFData MessageSystemAttributeNameForSends

instance ToByteString MessageSystemAttributeNameForSends

instance ToQuery MessageSystemAttributeNameForSends

instance ToHeader MessageSystemAttributeNameForSends

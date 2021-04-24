{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.NotificationTransport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.NotificationTransport
  ( NotificationTransport
      ( ..,
        Email,
        SNS,
        Sqs
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data NotificationTransport
  = NotificationTransport'
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

pattern Email :: NotificationTransport
pattern Email = NotificationTransport' "Email"

pattern SNS :: NotificationTransport
pattern SNS = NotificationTransport' "SNS"

pattern Sqs :: NotificationTransport
pattern Sqs = NotificationTransport' "SQS"

{-# COMPLETE
  Email,
  SNS,
  Sqs,
  NotificationTransport'
  #-}

instance FromText NotificationTransport where
  parser = (NotificationTransport' . mk) <$> takeText

instance ToText NotificationTransport where
  toText (NotificationTransport' ci) = original ci

instance Hashable NotificationTransport

instance NFData NotificationTransport

instance ToByteString NotificationTransport

instance ToQuery NotificationTransport

instance ToHeader NotificationTransport

instance ToJSON NotificationTransport where
  toJSON = toJSONText

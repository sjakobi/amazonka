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
-- Module      : Network.AWS.SQS.Types.MessageAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SQS.Types.MessageAttribute
  ( MessageAttribute
      ( ..,
        MessageAttributeAll,
        MessageAttributeApproximateFirstReceiveTimestamp,
        MessageAttributeApproximateReceiveCount,
        MessageAttributeSenderId,
        MessageAttributeSentTimestamp
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MessageAttribute = MessageAttribute'
  { fromMessageAttribute ::
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

pattern MessageAttributeAll :: MessageAttribute
pattern MessageAttributeAll = MessageAttribute' "All"

pattern MessageAttributeApproximateFirstReceiveTimestamp :: MessageAttribute
pattern MessageAttributeApproximateFirstReceiveTimestamp = MessageAttribute' "ApproximateFirstReceiveTimestamp"

pattern MessageAttributeApproximateReceiveCount :: MessageAttribute
pattern MessageAttributeApproximateReceiveCount = MessageAttribute' "ApproximateReceiveCount"

pattern MessageAttributeSenderId :: MessageAttribute
pattern MessageAttributeSenderId = MessageAttribute' "SenderId"

pattern MessageAttributeSentTimestamp :: MessageAttribute
pattern MessageAttributeSentTimestamp = MessageAttribute' "SentTimestamp"

{-# COMPLETE
  MessageAttributeAll,
  MessageAttributeApproximateFirstReceiveTimestamp,
  MessageAttributeApproximateReceiveCount,
  MessageAttributeSenderId,
  MessageAttributeSentTimestamp,
  MessageAttribute'
  #-}

instance Prelude.FromText MessageAttribute where
  parser = MessageAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText MessageAttribute where
  toText (MessageAttribute' x) = x

instance Prelude.Hashable MessageAttribute

instance Prelude.NFData MessageAttribute

instance Prelude.ToByteString MessageAttribute

instance Prelude.ToQuery MessageAttribute

instance Prelude.ToHeader MessageAttribute

instance Prelude.FromXML MessageAttribute where
  parseXML = Prelude.parseXMLText "MessageAttribute"

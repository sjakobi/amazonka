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
-- Module      : Network.AWS.MechanicalTurk.Types.NotificationTransport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.NotificationTransport
  ( NotificationTransport
      ( ..,
        NotificationTransportEmail,
        NotificationTransportSNS,
        NotificationTransportSQS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotificationTransport = NotificationTransport'
  { fromNotificationTransport ::
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

pattern NotificationTransportEmail :: NotificationTransport
pattern NotificationTransportEmail = NotificationTransport' "Email"

pattern NotificationTransportSNS :: NotificationTransport
pattern NotificationTransportSNS = NotificationTransport' "SNS"

pattern NotificationTransportSQS :: NotificationTransport
pattern NotificationTransportSQS = NotificationTransport' "SQS"

{-# COMPLETE
  NotificationTransportEmail,
  NotificationTransportSNS,
  NotificationTransportSQS,
  NotificationTransport'
  #-}

instance Prelude.FromText NotificationTransport where
  parser = NotificationTransport' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotificationTransport where
  toText (NotificationTransport' x) = x

instance Prelude.Hashable NotificationTransport

instance Prelude.NFData NotificationTransport

instance Prelude.ToByteString NotificationTransport

instance Prelude.ToQuery NotificationTransport

instance Prelude.ToHeader NotificationTransport

instance Prelude.ToJSON NotificationTransport where
  toJSON = Prelude.toJSONText

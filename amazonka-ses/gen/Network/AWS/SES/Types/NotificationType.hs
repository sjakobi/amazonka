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
-- Module      : Network.AWS.SES.Types.NotificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.NotificationType
  ( NotificationType
      ( ..,
        NotificationTypeBounce,
        NotificationTypeComplaint,
        NotificationTypeDelivery
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotificationType = NotificationType'
  { fromNotificationType ::
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

pattern NotificationTypeBounce :: NotificationType
pattern NotificationTypeBounce = NotificationType' "Bounce"

pattern NotificationTypeComplaint :: NotificationType
pattern NotificationTypeComplaint = NotificationType' "Complaint"

pattern NotificationTypeDelivery :: NotificationType
pattern NotificationTypeDelivery = NotificationType' "Delivery"

{-# COMPLETE
  NotificationTypeBounce,
  NotificationTypeComplaint,
  NotificationTypeDelivery,
  NotificationType'
  #-}

instance Prelude.FromText NotificationType where
  parser = NotificationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotificationType where
  toText (NotificationType' x) = x

instance Prelude.Hashable NotificationType

instance Prelude.NFData NotificationType

instance Prelude.ToByteString NotificationType

instance Prelude.ToQuery NotificationType

instance Prelude.ToHeader NotificationType

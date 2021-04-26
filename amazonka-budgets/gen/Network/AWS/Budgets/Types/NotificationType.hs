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
-- Module      : Network.AWS.Budgets.Types.NotificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.NotificationType
  ( NotificationType
      ( ..,
        NotificationTypeACTUAL,
        NotificationTypeFORECASTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of a notification. It must be ACTUAL or FORECASTED.
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

pattern NotificationTypeACTUAL :: NotificationType
pattern NotificationTypeACTUAL = NotificationType' "ACTUAL"

pattern NotificationTypeFORECASTED :: NotificationType
pattern NotificationTypeFORECASTED = NotificationType' "FORECASTED"

{-# COMPLETE
  NotificationTypeACTUAL,
  NotificationTypeFORECASTED,
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

instance Prelude.ToJSON NotificationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NotificationType where
  parseJSON = Prelude.parseJSONText "NotificationType"

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
-- Module      : Network.AWS.Budgets.Types.NotificationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Budgets.Types.NotificationState
  ( NotificationState
      ( ..,
        NotificationStateALARM,
        NotificationStateOK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotificationState = NotificationState'
  { fromNotificationState ::
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

pattern NotificationStateALARM :: NotificationState
pattern NotificationStateALARM = NotificationState' "ALARM"

pattern NotificationStateOK :: NotificationState
pattern NotificationStateOK = NotificationState' "OK"

{-# COMPLETE
  NotificationStateALARM,
  NotificationStateOK,
  NotificationState'
  #-}

instance Prelude.FromText NotificationState where
  parser = NotificationState' Prelude.<$> Prelude.takeText

instance Prelude.ToText NotificationState where
  toText (NotificationState' x) = x

instance Prelude.Hashable NotificationState

instance Prelude.NFData NotificationState

instance Prelude.ToByteString NotificationState

instance Prelude.ToQuery NotificationState

instance Prelude.ToHeader NotificationState

instance Prelude.ToJSON NotificationState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON NotificationState where
  parseJSON = Prelude.parseJSONText "NotificationState"

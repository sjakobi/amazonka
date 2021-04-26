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
-- Module      : Network.AWS.SageMaker.Types.UserProfileStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.UserProfileStatus
  ( UserProfileStatus
      ( ..,
        UserProfileStatusDeleteFailed,
        UserProfileStatusDeleting,
        UserProfileStatusFailed,
        UserProfileStatusInService,
        UserProfileStatusPending,
        UserProfileStatusUpdateFailed,
        UserProfileStatusUpdating
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserProfileStatus = UserProfileStatus'
  { fromUserProfileStatus ::
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

pattern UserProfileStatusDeleteFailed :: UserProfileStatus
pattern UserProfileStatusDeleteFailed = UserProfileStatus' "Delete_Failed"

pattern UserProfileStatusDeleting :: UserProfileStatus
pattern UserProfileStatusDeleting = UserProfileStatus' "Deleting"

pattern UserProfileStatusFailed :: UserProfileStatus
pattern UserProfileStatusFailed = UserProfileStatus' "Failed"

pattern UserProfileStatusInService :: UserProfileStatus
pattern UserProfileStatusInService = UserProfileStatus' "InService"

pattern UserProfileStatusPending :: UserProfileStatus
pattern UserProfileStatusPending = UserProfileStatus' "Pending"

pattern UserProfileStatusUpdateFailed :: UserProfileStatus
pattern UserProfileStatusUpdateFailed = UserProfileStatus' "Update_Failed"

pattern UserProfileStatusUpdating :: UserProfileStatus
pattern UserProfileStatusUpdating = UserProfileStatus' "Updating"

{-# COMPLETE
  UserProfileStatusDeleteFailed,
  UserProfileStatusDeleting,
  UserProfileStatusFailed,
  UserProfileStatusInService,
  UserProfileStatusPending,
  UserProfileStatusUpdateFailed,
  UserProfileStatusUpdating,
  UserProfileStatus'
  #-}

instance Prelude.FromText UserProfileStatus where
  parser = UserProfileStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserProfileStatus where
  toText (UserProfileStatus' x) = x

instance Prelude.Hashable UserProfileStatus

instance Prelude.NFData UserProfileStatus

instance Prelude.ToByteString UserProfileStatus

instance Prelude.ToQuery UserProfileStatus

instance Prelude.ToHeader UserProfileStatus

instance Prelude.FromJSON UserProfileStatus where
  parseJSON = Prelude.parseJSONText "UserProfileStatus"

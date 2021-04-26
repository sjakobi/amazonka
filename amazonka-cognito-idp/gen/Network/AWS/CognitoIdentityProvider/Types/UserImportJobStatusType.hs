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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UserImportJobStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UserImportJobStatusType
  ( UserImportJobStatusType
      ( ..,
        UserImportJobStatusTypeCreated,
        UserImportJobStatusTypeExpired,
        UserImportJobStatusTypeFailed,
        UserImportJobStatusTypeInProgress,
        UserImportJobStatusTypePending,
        UserImportJobStatusTypeStopped,
        UserImportJobStatusTypeStopping,
        UserImportJobStatusTypeSucceeded
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserImportJobStatusType = UserImportJobStatusType'
  { fromUserImportJobStatusType ::
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

pattern UserImportJobStatusTypeCreated :: UserImportJobStatusType
pattern UserImportJobStatusTypeCreated = UserImportJobStatusType' "Created"

pattern UserImportJobStatusTypeExpired :: UserImportJobStatusType
pattern UserImportJobStatusTypeExpired = UserImportJobStatusType' "Expired"

pattern UserImportJobStatusTypeFailed :: UserImportJobStatusType
pattern UserImportJobStatusTypeFailed = UserImportJobStatusType' "Failed"

pattern UserImportJobStatusTypeInProgress :: UserImportJobStatusType
pattern UserImportJobStatusTypeInProgress = UserImportJobStatusType' "InProgress"

pattern UserImportJobStatusTypePending :: UserImportJobStatusType
pattern UserImportJobStatusTypePending = UserImportJobStatusType' "Pending"

pattern UserImportJobStatusTypeStopped :: UserImportJobStatusType
pattern UserImportJobStatusTypeStopped = UserImportJobStatusType' "Stopped"

pattern UserImportJobStatusTypeStopping :: UserImportJobStatusType
pattern UserImportJobStatusTypeStopping = UserImportJobStatusType' "Stopping"

pattern UserImportJobStatusTypeSucceeded :: UserImportJobStatusType
pattern UserImportJobStatusTypeSucceeded = UserImportJobStatusType' "Succeeded"

{-# COMPLETE
  UserImportJobStatusTypeCreated,
  UserImportJobStatusTypeExpired,
  UserImportJobStatusTypeFailed,
  UserImportJobStatusTypeInProgress,
  UserImportJobStatusTypePending,
  UserImportJobStatusTypeStopped,
  UserImportJobStatusTypeStopping,
  UserImportJobStatusTypeSucceeded,
  UserImportJobStatusType'
  #-}

instance Prelude.FromText UserImportJobStatusType where
  parser = UserImportJobStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserImportJobStatusType where
  toText (UserImportJobStatusType' x) = x

instance Prelude.Hashable UserImportJobStatusType

instance Prelude.NFData UserImportJobStatusType

instance Prelude.ToByteString UserImportJobStatusType

instance Prelude.ToQuery UserImportJobStatusType

instance Prelude.ToHeader UserImportJobStatusType

instance Prelude.FromJSON UserImportJobStatusType where
  parseJSON = Prelude.parseJSONText "UserImportJobStatusType"

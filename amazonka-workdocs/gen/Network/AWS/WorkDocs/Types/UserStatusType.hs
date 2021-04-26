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
-- Module      : Network.AWS.WorkDocs.Types.UserStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UserStatusType
  ( UserStatusType
      ( ..,
        UserStatusTypeACTIVE,
        UserStatusTypeINACTIVE,
        UserStatusTypePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserStatusType = UserStatusType'
  { fromUserStatusType ::
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

pattern UserStatusTypeACTIVE :: UserStatusType
pattern UserStatusTypeACTIVE = UserStatusType' "ACTIVE"

pattern UserStatusTypeINACTIVE :: UserStatusType
pattern UserStatusTypeINACTIVE = UserStatusType' "INACTIVE"

pattern UserStatusTypePENDING :: UserStatusType
pattern UserStatusTypePENDING = UserStatusType' "PENDING"

{-# COMPLETE
  UserStatusTypeACTIVE,
  UserStatusTypeINACTIVE,
  UserStatusTypePENDING,
  UserStatusType'
  #-}

instance Prelude.FromText UserStatusType where
  parser = UserStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserStatusType where
  toText (UserStatusType' x) = x

instance Prelude.Hashable UserStatusType

instance Prelude.NFData UserStatusType

instance Prelude.ToByteString UserStatusType

instance Prelude.ToQuery UserStatusType

instance Prelude.ToHeader UserStatusType

instance Prelude.FromJSON UserStatusType where
  parseJSON = Prelude.parseJSONText "UserStatusType"

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
-- Module      : Network.AWS.WorkDocs.Types.UserSortType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UserSortType
  ( UserSortType
      ( ..,
        UserSortTypeFULLNAME,
        UserSortTypeSTORAGELIMIT,
        UserSortTypeSTORAGEUSED,
        UserSortTypeUSERNAME,
        UserSortTypeUSERSTATUS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserSortType = UserSortType'
  { fromUserSortType ::
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

pattern UserSortTypeFULLNAME :: UserSortType
pattern UserSortTypeFULLNAME = UserSortType' "FULL_NAME"

pattern UserSortTypeSTORAGELIMIT :: UserSortType
pattern UserSortTypeSTORAGELIMIT = UserSortType' "STORAGE_LIMIT"

pattern UserSortTypeSTORAGEUSED :: UserSortType
pattern UserSortTypeSTORAGEUSED = UserSortType' "STORAGE_USED"

pattern UserSortTypeUSERNAME :: UserSortType
pattern UserSortTypeUSERNAME = UserSortType' "USER_NAME"

pattern UserSortTypeUSERSTATUS :: UserSortType
pattern UserSortTypeUSERSTATUS = UserSortType' "USER_STATUS"

{-# COMPLETE
  UserSortTypeFULLNAME,
  UserSortTypeSTORAGELIMIT,
  UserSortTypeSTORAGEUSED,
  UserSortTypeUSERNAME,
  UserSortTypeUSERSTATUS,
  UserSortType'
  #-}

instance Prelude.FromText UserSortType where
  parser = UserSortType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserSortType where
  toText (UserSortType' x) = x

instance Prelude.Hashable UserSortType

instance Prelude.NFData UserSortType

instance Prelude.ToByteString UserSortType

instance Prelude.ToQuery UserSortType

instance Prelude.ToHeader UserSortType

instance Prelude.ToJSON UserSortType where
  toJSON = Prelude.toJSONText

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
-- Module      : Network.AWS.SageMaker.Types.UserProfileSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.UserProfileSortKey
  ( UserProfileSortKey
      ( ..,
        UserProfileSortKeyCreationTime,
        UserProfileSortKeyLastModifiedTime
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserProfileSortKey = UserProfileSortKey'
  { fromUserProfileSortKey ::
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

pattern UserProfileSortKeyCreationTime :: UserProfileSortKey
pattern UserProfileSortKeyCreationTime = UserProfileSortKey' "CreationTime"

pattern UserProfileSortKeyLastModifiedTime :: UserProfileSortKey
pattern UserProfileSortKeyLastModifiedTime = UserProfileSortKey' "LastModifiedTime"

{-# COMPLETE
  UserProfileSortKeyCreationTime,
  UserProfileSortKeyLastModifiedTime,
  UserProfileSortKey'
  #-}

instance Prelude.FromText UserProfileSortKey where
  parser = UserProfileSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserProfileSortKey where
  toText (UserProfileSortKey' x) = x

instance Prelude.Hashable UserProfileSortKey

instance Prelude.NFData UserProfileSortKey

instance Prelude.ToByteString UserProfileSortKey

instance Prelude.ToQuery UserProfileSortKey

instance Prelude.ToHeader UserProfileSortKey

instance Prelude.ToJSON UserProfileSortKey where
  toJSON = Prelude.toJSONText

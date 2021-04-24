{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.FolderName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.FolderName
  ( FolderName
      ( ..,
        DeletedItems,
        Drafts,
        Inbox,
        JunkEmail,
        SentItems
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FolderName = FolderName' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DeletedItems :: FolderName
pattern DeletedItems = FolderName' "DELETED_ITEMS"

pattern Drafts :: FolderName
pattern Drafts = FolderName' "DRAFTS"

pattern Inbox :: FolderName
pattern Inbox = FolderName' "INBOX"

pattern JunkEmail :: FolderName
pattern JunkEmail = FolderName' "JUNK_EMAIL"

pattern SentItems :: FolderName
pattern SentItems = FolderName' "SENT_ITEMS"

{-# COMPLETE
  DeletedItems,
  Drafts,
  Inbox,
  JunkEmail,
  SentItems,
  FolderName'
  #-}

instance FromText FolderName where
  parser = (FolderName' . mk) <$> takeText

instance ToText FolderName where
  toText (FolderName' ci) = original ci

instance Hashable FolderName

instance NFData FolderName

instance ToByteString FolderName

instance ToQuery FolderName

instance ToHeader FolderName

instance ToJSON FolderName where
  toJSON = toJSONText

instance FromJSON FolderName where
  parseJSON = parseJSONText "FolderName"

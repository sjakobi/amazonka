{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkMail.Types.RetentionAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.RetentionAction
  ( RetentionAction
      ( ..,
        Delete,
        None,
        PermanentlyDelete
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RetentionAction = RetentionAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Delete :: RetentionAction
pattern Delete = RetentionAction' "DELETE"

pattern None :: RetentionAction
pattern None = RetentionAction' "NONE"

pattern PermanentlyDelete :: RetentionAction
pattern PermanentlyDelete = RetentionAction' "PERMANENTLY_DELETE"

{-# COMPLETE
  Delete,
  None,
  PermanentlyDelete,
  RetentionAction'
  #-}

instance FromText RetentionAction where
  parser = (RetentionAction' . mk) <$> takeText

instance ToText RetentionAction where
  toText (RetentionAction' ci) = original ci

instance Hashable RetentionAction

instance NFData RetentionAction

instance ToByteString RetentionAction

instance ToQuery RetentionAction

instance ToHeader RetentionAction

instance ToJSON RetentionAction where
  toJSON = toJSONText

instance FromJSON RetentionAction where
  parseJSON = parseJSONText "RetentionAction"

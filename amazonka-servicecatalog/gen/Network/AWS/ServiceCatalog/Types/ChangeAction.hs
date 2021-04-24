{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ChangeAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ChangeAction
  ( ChangeAction
      ( ..,
        Add,
        Modify,
        Remove
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChangeAction = ChangeAction' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Add :: ChangeAction
pattern Add = ChangeAction' "ADD"

pattern Modify :: ChangeAction
pattern Modify = ChangeAction' "MODIFY"

pattern Remove :: ChangeAction
pattern Remove = ChangeAction' "REMOVE"

{-# COMPLETE
  Add,
  Modify,
  Remove,
  ChangeAction'
  #-}

instance FromText ChangeAction where
  parser = (ChangeAction' . mk) <$> takeText

instance ToText ChangeAction where
  toText (ChangeAction' ci) = original ci

instance Hashable ChangeAction

instance NFData ChangeAction

instance ToByteString ChangeAction

instance ToQuery ChangeAction

instance ToHeader ChangeAction

instance FromJSON ChangeAction where
  parseJSON = parseJSONText "ChangeAction"

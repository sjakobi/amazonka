{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.UpdateActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.UpdateActionType
  ( UpdateActionType
      ( ..,
        CreateOrUpdate,
        Delete
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UpdateActionType = UpdateActionType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CreateOrUpdate :: UpdateActionType
pattern CreateOrUpdate = UpdateActionType' "CREATE_OR_UPDATE"

pattern Delete :: UpdateActionType
pattern Delete = UpdateActionType' "DELETE"

{-# COMPLETE
  CreateOrUpdate,
  Delete,
  UpdateActionType'
  #-}

instance FromText UpdateActionType where
  parser = (UpdateActionType' . mk) <$> takeText

instance ToText UpdateActionType where
  toText (UpdateActionType' ci) = original ci

instance Hashable UpdateActionType

instance NFData UpdateActionType

instance ToByteString UpdateActionType

instance ToQuery UpdateActionType

instance ToHeader UpdateActionType

instance ToJSON UpdateActionType where
  toJSON = toJSONText

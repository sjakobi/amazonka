{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.UpdateBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.UpdateBehavior
  ( UpdateBehavior
      ( ..,
        Log,
        UpdateInDatabase
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UpdateBehavior = UpdateBehavior' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Log :: UpdateBehavior
pattern Log = UpdateBehavior' "LOG"

pattern UpdateInDatabase :: UpdateBehavior
pattern UpdateInDatabase = UpdateBehavior' "UPDATE_IN_DATABASE"

{-# COMPLETE
  Log,
  UpdateInDatabase,
  UpdateBehavior'
  #-}

instance FromText UpdateBehavior where
  parser = (UpdateBehavior' . mk) <$> takeText

instance ToText UpdateBehavior where
  toText (UpdateBehavior' ci) = original ci

instance Hashable UpdateBehavior

instance NFData UpdateBehavior

instance ToByteString UpdateBehavior

instance ToQuery UpdateBehavior

instance ToHeader UpdateBehavior

instance ToJSON UpdateBehavior where
  toJSON = toJSONText

instance FromJSON UpdateBehavior where
  parseJSON = parseJSONText "UpdateBehavior"

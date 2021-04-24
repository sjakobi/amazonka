{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.DeleteBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DeleteBehavior
  ( DeleteBehavior
      ( ..,
        DBDeleteFromDatabase,
        DBDeprecateInDatabase,
        DBLog
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeleteBehavior = DeleteBehavior' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DBDeleteFromDatabase :: DeleteBehavior
pattern DBDeleteFromDatabase = DeleteBehavior' "DELETE_FROM_DATABASE"

pattern DBDeprecateInDatabase :: DeleteBehavior
pattern DBDeprecateInDatabase = DeleteBehavior' "DEPRECATE_IN_DATABASE"

pattern DBLog :: DeleteBehavior
pattern DBLog = DeleteBehavior' "LOG"

{-# COMPLETE
  DBDeleteFromDatabase,
  DBDeprecateInDatabase,
  DBLog,
  DeleteBehavior'
  #-}

instance FromText DeleteBehavior where
  parser = (DeleteBehavior' . mk) <$> takeText

instance ToText DeleteBehavior where
  toText (DeleteBehavior' ci) = original ci

instance Hashable DeleteBehavior

instance NFData DeleteBehavior

instance ToByteString DeleteBehavior

instance ToQuery DeleteBehavior

instance ToHeader DeleteBehavior

instance ToJSON DeleteBehavior where
  toJSON = toJSONText

instance FromJSON DeleteBehavior where
  parseJSON = parseJSONText "DeleteBehavior"

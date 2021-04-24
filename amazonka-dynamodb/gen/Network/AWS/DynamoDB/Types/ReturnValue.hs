{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReturnValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReturnValue
  ( ReturnValue
      ( ..,
        RVAllNew,
        RVAllOld,
        RVNone,
        RVUpdatedNew,
        RVUpdatedOld
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReturnValue = ReturnValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RVAllNew :: ReturnValue
pattern RVAllNew = ReturnValue' "ALL_NEW"

pattern RVAllOld :: ReturnValue
pattern RVAllOld = ReturnValue' "ALL_OLD"

pattern RVNone :: ReturnValue
pattern RVNone = ReturnValue' "NONE"

pattern RVUpdatedNew :: ReturnValue
pattern RVUpdatedNew = ReturnValue' "UPDATED_NEW"

pattern RVUpdatedOld :: ReturnValue
pattern RVUpdatedOld = ReturnValue' "UPDATED_OLD"

{-# COMPLETE
  RVAllNew,
  RVAllOld,
  RVNone,
  RVUpdatedNew,
  RVUpdatedOld,
  ReturnValue'
  #-}

instance FromText ReturnValue where
  parser = (ReturnValue' . mk) <$> takeText

instance ToText ReturnValue where
  toText (ReturnValue' ci) = original ci

instance Hashable ReturnValue

instance NFData ReturnValue

instance ToByteString ReturnValue

instance ToQuery ReturnValue

instance ToHeader ReturnValue

instance ToJSON ReturnValue where
  toJSON = toJSONText

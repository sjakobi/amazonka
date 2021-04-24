{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.StackSetOperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.StackSetOperationType
  ( StackSetOperationType
      ( ..,
        Create,
        Delete,
        Update
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackSetOperationType
  = StackSetOperationType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Create :: StackSetOperationType
pattern Create = StackSetOperationType' "CREATE"

pattern Delete :: StackSetOperationType
pattern Delete = StackSetOperationType' "DELETE"

pattern Update :: StackSetOperationType
pattern Update = StackSetOperationType' "UPDATE"

{-# COMPLETE
  Create,
  Delete,
  Update,
  StackSetOperationType'
  #-}

instance FromText StackSetOperationType where
  parser = (StackSetOperationType' . mk) <$> takeText

instance ToText StackSetOperationType where
  toText (StackSetOperationType' ci) = original ci

instance Hashable StackSetOperationType

instance NFData StackSetOperationType

instance ToByteString StackSetOperationType

instance ToQuery StackSetOperationType

instance ToHeader StackSetOperationType

instance ToJSON StackSetOperationType where
  toJSON = toJSONText

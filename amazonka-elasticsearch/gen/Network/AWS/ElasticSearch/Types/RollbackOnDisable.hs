{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.RollbackOnDisable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.RollbackOnDisable
  ( RollbackOnDisable
      ( ..,
        DefaultRollback,
        NoRollback
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK, DEFAULT_ROLLBACK.
data RollbackOnDisable = RollbackOnDisable' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DefaultRollback :: RollbackOnDisable
pattern DefaultRollback = RollbackOnDisable' "DEFAULT_ROLLBACK"

pattern NoRollback :: RollbackOnDisable
pattern NoRollback = RollbackOnDisable' "NO_ROLLBACK"

{-# COMPLETE
  DefaultRollback,
  NoRollback,
  RollbackOnDisable'
  #-}

instance FromText RollbackOnDisable where
  parser = (RollbackOnDisable' . mk) <$> takeText

instance ToText RollbackOnDisable where
  toText (RollbackOnDisable' ci) = original ci

instance Hashable RollbackOnDisable

instance NFData RollbackOnDisable

instance ToByteString RollbackOnDisable

instance ToQuery RollbackOnDisable

instance ToHeader RollbackOnDisable

instance ToJSON RollbackOnDisable where
  toJSON = toJSONText

instance FromJSON RollbackOnDisable where
  parseJSON = parseJSONText "RollbackOnDisable"

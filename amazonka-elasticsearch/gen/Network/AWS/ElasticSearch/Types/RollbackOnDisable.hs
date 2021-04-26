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
-- Module      : Network.AWS.ElasticSearch.Types.RollbackOnDisable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.RollbackOnDisable
  ( RollbackOnDisable
      ( ..,
        RollbackOnDisableDEFAULTROLLBACK,
        RollbackOnDisableNOROLLBACK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the rollback state while disabling Auto-Tune for the domain.
-- Valid values are NO_ROLLBACK, DEFAULT_ROLLBACK.
newtype RollbackOnDisable = RollbackOnDisable'
  { fromRollbackOnDisable ::
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

pattern RollbackOnDisableDEFAULTROLLBACK :: RollbackOnDisable
pattern RollbackOnDisableDEFAULTROLLBACK = RollbackOnDisable' "DEFAULT_ROLLBACK"

pattern RollbackOnDisableNOROLLBACK :: RollbackOnDisable
pattern RollbackOnDisableNOROLLBACK = RollbackOnDisable' "NO_ROLLBACK"

{-# COMPLETE
  RollbackOnDisableDEFAULTROLLBACK,
  RollbackOnDisableNOROLLBACK,
  RollbackOnDisable'
  #-}

instance Prelude.FromText RollbackOnDisable where
  parser = RollbackOnDisable' Prelude.<$> Prelude.takeText

instance Prelude.ToText RollbackOnDisable where
  toText (RollbackOnDisable' x) = x

instance Prelude.Hashable RollbackOnDisable

instance Prelude.NFData RollbackOnDisable

instance Prelude.ToByteString RollbackOnDisable

instance Prelude.ToQuery RollbackOnDisable

instance Prelude.ToHeader RollbackOnDisable

instance Prelude.ToJSON RollbackOnDisable where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RollbackOnDisable where
  parseJSON = Prelude.parseJSONText "RollbackOnDisable"

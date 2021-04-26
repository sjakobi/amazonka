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
-- Module      : Network.AWS.Redshift.Types.ActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ActionType
  ( ActionType
      ( ..,
        ActionTypeRecommendNodeConfig,
        ActionTypeResizeCluster,
        ActionTypeRestoreCluster
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype ActionType = ActionType'
  { fromActionType ::
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

pattern ActionTypeRecommendNodeConfig :: ActionType
pattern ActionTypeRecommendNodeConfig = ActionType' "recommend-node-config"

pattern ActionTypeResizeCluster :: ActionType
pattern ActionTypeResizeCluster = ActionType' "resize-cluster"

pattern ActionTypeRestoreCluster :: ActionType
pattern ActionTypeRestoreCluster = ActionType' "restore-cluster"

{-# COMPLETE
  ActionTypeRecommendNodeConfig,
  ActionTypeResizeCluster,
  ActionTypeRestoreCluster,
  ActionType'
  #-}

instance Prelude.FromText ActionType where
  parser = ActionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActionType where
  toText (ActionType' x) = x

instance Prelude.Hashable ActionType

instance Prelude.NFData ActionType

instance Prelude.ToByteString ActionType

instance Prelude.ToQuery ActionType

instance Prelude.ToHeader ActionType

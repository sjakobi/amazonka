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
-- Module      : Network.AWS.APIGateway.Types.CacheClusterStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.CacheClusterStatus
  ( CacheClusterStatus
      ( ..,
        CacheClusterStatusAVAILABLE,
        CacheClusterStatusCREATEINPROGRESS,
        CacheClusterStatusDELETEINPROGRESS,
        CacheClusterStatusFLUSHINPROGRESS,
        CacheClusterStatusNOTAVAILABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Returns the status of the __CacheCluster__.
newtype CacheClusterStatus = CacheClusterStatus'
  { fromCacheClusterStatus ::
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

pattern CacheClusterStatusAVAILABLE :: CacheClusterStatus
pattern CacheClusterStatusAVAILABLE = CacheClusterStatus' "AVAILABLE"

pattern CacheClusterStatusCREATEINPROGRESS :: CacheClusterStatus
pattern CacheClusterStatusCREATEINPROGRESS = CacheClusterStatus' "CREATE_IN_PROGRESS"

pattern CacheClusterStatusDELETEINPROGRESS :: CacheClusterStatus
pattern CacheClusterStatusDELETEINPROGRESS = CacheClusterStatus' "DELETE_IN_PROGRESS"

pattern CacheClusterStatusFLUSHINPROGRESS :: CacheClusterStatus
pattern CacheClusterStatusFLUSHINPROGRESS = CacheClusterStatus' "FLUSH_IN_PROGRESS"

pattern CacheClusterStatusNOTAVAILABLE :: CacheClusterStatus
pattern CacheClusterStatusNOTAVAILABLE = CacheClusterStatus' "NOT_AVAILABLE"

{-# COMPLETE
  CacheClusterStatusAVAILABLE,
  CacheClusterStatusCREATEINPROGRESS,
  CacheClusterStatusDELETEINPROGRESS,
  CacheClusterStatusFLUSHINPROGRESS,
  CacheClusterStatusNOTAVAILABLE,
  CacheClusterStatus'
  #-}

instance Prelude.FromText CacheClusterStatus where
  parser = CacheClusterStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CacheClusterStatus where
  toText (CacheClusterStatus' x) = x

instance Prelude.Hashable CacheClusterStatus

instance Prelude.NFData CacheClusterStatus

instance Prelude.ToByteString CacheClusterStatus

instance Prelude.ToQuery CacheClusterStatus

instance Prelude.ToHeader CacheClusterStatus

instance Prelude.FromJSON CacheClusterStatus where
  parseJSON = Prelude.parseJSONText "CacheClusterStatus"

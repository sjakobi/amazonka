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
-- Module      : Network.AWS.CodeBuild.Types.CacheMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.CacheMode
  ( CacheMode
      ( ..,
        CacheModeLOCALCUSTOMCACHE,
        CacheModeLOCALDOCKERLAYERCACHE,
        CacheModeLOCALSOURCECACHE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CacheMode = CacheMode'
  { fromCacheMode ::
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

pattern CacheModeLOCALCUSTOMCACHE :: CacheMode
pattern CacheModeLOCALCUSTOMCACHE = CacheMode' "LOCAL_CUSTOM_CACHE"

pattern CacheModeLOCALDOCKERLAYERCACHE :: CacheMode
pattern CacheModeLOCALDOCKERLAYERCACHE = CacheMode' "LOCAL_DOCKER_LAYER_CACHE"

pattern CacheModeLOCALSOURCECACHE :: CacheMode
pattern CacheModeLOCALSOURCECACHE = CacheMode' "LOCAL_SOURCE_CACHE"

{-# COMPLETE
  CacheModeLOCALCUSTOMCACHE,
  CacheModeLOCALDOCKERLAYERCACHE,
  CacheModeLOCALSOURCECACHE,
  CacheMode'
  #-}

instance Prelude.FromText CacheMode where
  parser = CacheMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText CacheMode where
  toText (CacheMode' x) = x

instance Prelude.Hashable CacheMode

instance Prelude.NFData CacheMode

instance Prelude.ToByteString CacheMode

instance Prelude.ToQuery CacheMode

instance Prelude.ToHeader CacheMode

instance Prelude.ToJSON CacheMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CacheMode where
  parseJSON = Prelude.parseJSONText "CacheMode"

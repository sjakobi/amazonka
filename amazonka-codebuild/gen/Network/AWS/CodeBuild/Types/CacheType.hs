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
-- Module      : Network.AWS.CodeBuild.Types.CacheType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.CacheType
  ( CacheType
      ( ..,
        CacheTypeLOCAL,
        CacheTypeNOCACHE,
        CacheTypeS3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CacheType = CacheType'
  { fromCacheType ::
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

pattern CacheTypeLOCAL :: CacheType
pattern CacheTypeLOCAL = CacheType' "LOCAL"

pattern CacheTypeNOCACHE :: CacheType
pattern CacheTypeNOCACHE = CacheType' "NO_CACHE"

pattern CacheTypeS3 :: CacheType
pattern CacheTypeS3 = CacheType' "S3"

{-# COMPLETE
  CacheTypeLOCAL,
  CacheTypeNOCACHE,
  CacheTypeS3,
  CacheType'
  #-}

instance Prelude.FromText CacheType where
  parser = CacheType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CacheType where
  toText (CacheType' x) = x

instance Prelude.Hashable CacheType

instance Prelude.NFData CacheType

instance Prelude.ToByteString CacheType

instance Prelude.ToQuery CacheType

instance Prelude.ToHeader CacheType

instance Prelude.ToJSON CacheType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CacheType where
  parseJSON = Prelude.parseJSONText "CacheType"

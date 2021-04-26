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
-- Module      : Network.AWS.AppSync.Types.ApiCachingBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.ApiCachingBehavior
  ( ApiCachingBehavior
      ( ..,
        ApiCachingBehaviorFULLREQUESTCACHING,
        ApiCachingBehaviorPERRESOLVERCACHING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApiCachingBehavior = ApiCachingBehavior'
  { fromApiCachingBehavior ::
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

pattern ApiCachingBehaviorFULLREQUESTCACHING :: ApiCachingBehavior
pattern ApiCachingBehaviorFULLREQUESTCACHING = ApiCachingBehavior' "FULL_REQUEST_CACHING"

pattern ApiCachingBehaviorPERRESOLVERCACHING :: ApiCachingBehavior
pattern ApiCachingBehaviorPERRESOLVERCACHING = ApiCachingBehavior' "PER_RESOLVER_CACHING"

{-# COMPLETE
  ApiCachingBehaviorFULLREQUESTCACHING,
  ApiCachingBehaviorPERRESOLVERCACHING,
  ApiCachingBehavior'
  #-}

instance Prelude.FromText ApiCachingBehavior where
  parser = ApiCachingBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApiCachingBehavior where
  toText (ApiCachingBehavior' x) = x

instance Prelude.Hashable ApiCachingBehavior

instance Prelude.NFData ApiCachingBehavior

instance Prelude.ToByteString ApiCachingBehavior

instance Prelude.ToQuery ApiCachingBehavior

instance Prelude.ToHeader ApiCachingBehavior

instance Prelude.ToJSON ApiCachingBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ApiCachingBehavior where
  parseJSON = Prelude.parseJSONText "ApiCachingBehavior"

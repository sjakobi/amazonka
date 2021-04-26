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
-- Module      : Network.AWS.IAM.Types.GlobalEndpointTokenVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.GlobalEndpointTokenVersion
  ( GlobalEndpointTokenVersion
      ( ..,
        GlobalEndpointTokenVersionV1Token,
        GlobalEndpointTokenVersionV2Token
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype GlobalEndpointTokenVersion = GlobalEndpointTokenVersion'
  { fromGlobalEndpointTokenVersion ::
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

pattern GlobalEndpointTokenVersionV1Token :: GlobalEndpointTokenVersion
pattern GlobalEndpointTokenVersionV1Token = GlobalEndpointTokenVersion' "v1Token"

pattern GlobalEndpointTokenVersionV2Token :: GlobalEndpointTokenVersion
pattern GlobalEndpointTokenVersionV2Token = GlobalEndpointTokenVersion' "v2Token"

{-# COMPLETE
  GlobalEndpointTokenVersionV1Token,
  GlobalEndpointTokenVersionV2Token,
  GlobalEndpointTokenVersion'
  #-}

instance Prelude.FromText GlobalEndpointTokenVersion where
  parser = GlobalEndpointTokenVersion' Prelude.<$> Prelude.takeText

instance Prelude.ToText GlobalEndpointTokenVersion where
  toText (GlobalEndpointTokenVersion' x) = x

instance Prelude.Hashable GlobalEndpointTokenVersion

instance Prelude.NFData GlobalEndpointTokenVersion

instance Prelude.ToByteString GlobalEndpointTokenVersion

instance Prelude.ToQuery GlobalEndpointTokenVersion

instance Prelude.ToHeader GlobalEndpointTokenVersion

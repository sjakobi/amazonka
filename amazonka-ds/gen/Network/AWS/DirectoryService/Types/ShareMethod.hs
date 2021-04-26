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
-- Module      : Network.AWS.DirectoryService.Types.ShareMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.ShareMethod
  ( ShareMethod
      ( ..,
        ShareMethodHANDSHAKE,
        ShareMethodORGANIZATIONS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShareMethod = ShareMethod'
  { fromShareMethod ::
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

pattern ShareMethodHANDSHAKE :: ShareMethod
pattern ShareMethodHANDSHAKE = ShareMethod' "HANDSHAKE"

pattern ShareMethodORGANIZATIONS :: ShareMethod
pattern ShareMethodORGANIZATIONS = ShareMethod' "ORGANIZATIONS"

{-# COMPLETE
  ShareMethodHANDSHAKE,
  ShareMethodORGANIZATIONS,
  ShareMethod'
  #-}

instance Prelude.FromText ShareMethod where
  parser = ShareMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShareMethod where
  toText (ShareMethod' x) = x

instance Prelude.Hashable ShareMethod

instance Prelude.NFData ShareMethod

instance Prelude.ToByteString ShareMethod

instance Prelude.ToQuery ShareMethod

instance Prelude.ToHeader ShareMethod

instance Prelude.ToJSON ShareMethod where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ShareMethod where
  parseJSON = Prelude.parseJSONText "ShareMethod"

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
-- Module      : Network.AWS.CloudFront.Types.CachePolicyHeaderBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyHeaderBehavior
  ( CachePolicyHeaderBehavior
      ( ..,
        CachePolicyHeaderBehaviorNone,
        CachePolicyHeaderBehaviorWhitelist
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CachePolicyHeaderBehavior = CachePolicyHeaderBehavior'
  { fromCachePolicyHeaderBehavior ::
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

pattern CachePolicyHeaderBehaviorNone :: CachePolicyHeaderBehavior
pattern CachePolicyHeaderBehaviorNone = CachePolicyHeaderBehavior' "none"

pattern CachePolicyHeaderBehaviorWhitelist :: CachePolicyHeaderBehavior
pattern CachePolicyHeaderBehaviorWhitelist = CachePolicyHeaderBehavior' "whitelist"

{-# COMPLETE
  CachePolicyHeaderBehaviorNone,
  CachePolicyHeaderBehaviorWhitelist,
  CachePolicyHeaderBehavior'
  #-}

instance Prelude.FromText CachePolicyHeaderBehavior where
  parser = CachePolicyHeaderBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText CachePolicyHeaderBehavior where
  toText (CachePolicyHeaderBehavior' x) = x

instance Prelude.Hashable CachePolicyHeaderBehavior

instance Prelude.NFData CachePolicyHeaderBehavior

instance Prelude.ToByteString CachePolicyHeaderBehavior

instance Prelude.ToQuery CachePolicyHeaderBehavior

instance Prelude.ToHeader CachePolicyHeaderBehavior

instance Prelude.FromXML CachePolicyHeaderBehavior where
  parseXML = Prelude.parseXMLText "CachePolicyHeaderBehavior"

instance Prelude.ToXML CachePolicyHeaderBehavior where
  toXML = Prelude.toXMLText

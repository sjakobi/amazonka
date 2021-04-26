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
-- Module      : Network.AWS.CloudFront.Types.CachePolicyQueryStringBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyQueryStringBehavior
  ( CachePolicyQueryStringBehavior
      ( ..,
        CachePolicyQueryStringBehaviorAll,
        CachePolicyQueryStringBehaviorAllExcept,
        CachePolicyQueryStringBehaviorNone,
        CachePolicyQueryStringBehaviorWhitelist
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CachePolicyQueryStringBehavior = CachePolicyQueryStringBehavior'
  { fromCachePolicyQueryStringBehavior ::
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

pattern CachePolicyQueryStringBehaviorAll :: CachePolicyQueryStringBehavior
pattern CachePolicyQueryStringBehaviorAll = CachePolicyQueryStringBehavior' "all"

pattern CachePolicyQueryStringBehaviorAllExcept :: CachePolicyQueryStringBehavior
pattern CachePolicyQueryStringBehaviorAllExcept = CachePolicyQueryStringBehavior' "allExcept"

pattern CachePolicyQueryStringBehaviorNone :: CachePolicyQueryStringBehavior
pattern CachePolicyQueryStringBehaviorNone = CachePolicyQueryStringBehavior' "none"

pattern CachePolicyQueryStringBehaviorWhitelist :: CachePolicyQueryStringBehavior
pattern CachePolicyQueryStringBehaviorWhitelist = CachePolicyQueryStringBehavior' "whitelist"

{-# COMPLETE
  CachePolicyQueryStringBehaviorAll,
  CachePolicyQueryStringBehaviorAllExcept,
  CachePolicyQueryStringBehaviorNone,
  CachePolicyQueryStringBehaviorWhitelist,
  CachePolicyQueryStringBehavior'
  #-}

instance Prelude.FromText CachePolicyQueryStringBehavior where
  parser = CachePolicyQueryStringBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText CachePolicyQueryStringBehavior where
  toText (CachePolicyQueryStringBehavior' x) = x

instance Prelude.Hashable CachePolicyQueryStringBehavior

instance Prelude.NFData CachePolicyQueryStringBehavior

instance Prelude.ToByteString CachePolicyQueryStringBehavior

instance Prelude.ToQuery CachePolicyQueryStringBehavior

instance Prelude.ToHeader CachePolicyQueryStringBehavior

instance Prelude.FromXML CachePolicyQueryStringBehavior where
  parseXML = Prelude.parseXMLText "CachePolicyQueryStringBehavior"

instance Prelude.ToXML CachePolicyQueryStringBehavior where
  toXML = Prelude.toXMLText

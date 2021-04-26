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
-- Module      : Network.AWS.CloudFront.Types.CachePolicyCookieBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyCookieBehavior
  ( CachePolicyCookieBehavior
      ( ..,
        CachePolicyCookieBehaviorAll,
        CachePolicyCookieBehaviorAllExcept,
        CachePolicyCookieBehaviorNone,
        CachePolicyCookieBehaviorWhitelist
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CachePolicyCookieBehavior = CachePolicyCookieBehavior'
  { fromCachePolicyCookieBehavior ::
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

pattern CachePolicyCookieBehaviorAll :: CachePolicyCookieBehavior
pattern CachePolicyCookieBehaviorAll = CachePolicyCookieBehavior' "all"

pattern CachePolicyCookieBehaviorAllExcept :: CachePolicyCookieBehavior
pattern CachePolicyCookieBehaviorAllExcept = CachePolicyCookieBehavior' "allExcept"

pattern CachePolicyCookieBehaviorNone :: CachePolicyCookieBehavior
pattern CachePolicyCookieBehaviorNone = CachePolicyCookieBehavior' "none"

pattern CachePolicyCookieBehaviorWhitelist :: CachePolicyCookieBehavior
pattern CachePolicyCookieBehaviorWhitelist = CachePolicyCookieBehavior' "whitelist"

{-# COMPLETE
  CachePolicyCookieBehaviorAll,
  CachePolicyCookieBehaviorAllExcept,
  CachePolicyCookieBehaviorNone,
  CachePolicyCookieBehaviorWhitelist,
  CachePolicyCookieBehavior'
  #-}

instance Prelude.FromText CachePolicyCookieBehavior where
  parser = CachePolicyCookieBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText CachePolicyCookieBehavior where
  toText (CachePolicyCookieBehavior' x) = x

instance Prelude.Hashable CachePolicyCookieBehavior

instance Prelude.NFData CachePolicyCookieBehavior

instance Prelude.ToByteString CachePolicyCookieBehavior

instance Prelude.ToQuery CachePolicyCookieBehavior

instance Prelude.ToHeader CachePolicyCookieBehavior

instance Prelude.FromXML CachePolicyCookieBehavior where
  parseXML = Prelude.parseXMLText "CachePolicyCookieBehavior"

instance Prelude.ToXML CachePolicyCookieBehavior where
  toXML = Prelude.toXMLText

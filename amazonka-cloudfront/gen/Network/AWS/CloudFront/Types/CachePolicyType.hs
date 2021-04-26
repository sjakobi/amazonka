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
-- Module      : Network.AWS.CloudFront.Types.CachePolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CachePolicyType
  ( CachePolicyType
      ( ..,
        CachePolicyTypeCustom,
        CachePolicyTypeManaged
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CachePolicyType = CachePolicyType'
  { fromCachePolicyType ::
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

pattern CachePolicyTypeCustom :: CachePolicyType
pattern CachePolicyTypeCustom = CachePolicyType' "custom"

pattern CachePolicyTypeManaged :: CachePolicyType
pattern CachePolicyTypeManaged = CachePolicyType' "managed"

{-# COMPLETE
  CachePolicyTypeCustom,
  CachePolicyTypeManaged,
  CachePolicyType'
  #-}

instance Prelude.FromText CachePolicyType where
  parser = CachePolicyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CachePolicyType where
  toText (CachePolicyType' x) = x

instance Prelude.Hashable CachePolicyType

instance Prelude.NFData CachePolicyType

instance Prelude.ToByteString CachePolicyType

instance Prelude.ToQuery CachePolicyType

instance Prelude.ToHeader CachePolicyType

instance Prelude.FromXML CachePolicyType where
  parseXML = Prelude.parseXMLText "CachePolicyType"

instance Prelude.ToXML CachePolicyType where
  toXML = Prelude.toXMLText

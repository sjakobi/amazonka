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
-- Module      : Network.AWS.Route53AutoNaming.Types.NamespaceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.NamespaceType
  ( NamespaceType
      ( ..,
        NamespaceTypeDNSPRIVATE,
        NamespaceTypeDNSPUBLIC,
        NamespaceTypeHTTP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NamespaceType = NamespaceType'
  { fromNamespaceType ::
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

pattern NamespaceTypeDNSPRIVATE :: NamespaceType
pattern NamespaceTypeDNSPRIVATE = NamespaceType' "DNS_PRIVATE"

pattern NamespaceTypeDNSPUBLIC :: NamespaceType
pattern NamespaceTypeDNSPUBLIC = NamespaceType' "DNS_PUBLIC"

pattern NamespaceTypeHTTP :: NamespaceType
pattern NamespaceTypeHTTP = NamespaceType' "HTTP"

{-# COMPLETE
  NamespaceTypeDNSPRIVATE,
  NamespaceTypeDNSPUBLIC,
  NamespaceTypeHTTP,
  NamespaceType'
  #-}

instance Prelude.FromText NamespaceType where
  parser = NamespaceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText NamespaceType where
  toText (NamespaceType' x) = x

instance Prelude.Hashable NamespaceType

instance Prelude.NFData NamespaceType

instance Prelude.ToByteString NamespaceType

instance Prelude.ToQuery NamespaceType

instance Prelude.ToHeader NamespaceType

instance Prelude.FromJSON NamespaceType where
  parseJSON = Prelude.parseJSONText "NamespaceType"

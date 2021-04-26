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
-- Module      : Network.AWS.EC2.Types.Scope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Scope
  ( Scope
      ( ..,
        ScopeAvailabilityZone,
        ScopeRegion
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype Scope = Scope' {fromScope :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ScopeAvailabilityZone :: Scope
pattern ScopeAvailabilityZone = Scope' "Availability Zone"

pattern ScopeRegion :: Scope
pattern ScopeRegion = Scope' "Region"

{-# COMPLETE
  ScopeAvailabilityZone,
  ScopeRegion,
  Scope'
  #-}

instance Prelude.FromText Scope where
  parser = Scope' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scope where
  toText (Scope' x) = x

instance Prelude.Hashable Scope

instance Prelude.NFData Scope

instance Prelude.ToByteString Scope

instance Prelude.ToQuery Scope

instance Prelude.ToHeader Scope

instance Prelude.FromXML Scope where
  parseXML = Prelude.parseXMLText "Scope"

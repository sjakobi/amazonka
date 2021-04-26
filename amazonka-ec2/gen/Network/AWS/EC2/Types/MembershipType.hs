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
-- Module      : Network.AWS.EC2.Types.MembershipType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.MembershipType
  ( MembershipType
      ( ..,
        MembershipTypeIgmp,
        MembershipTypeStatic
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype MembershipType = MembershipType'
  { fromMembershipType ::
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

pattern MembershipTypeIgmp :: MembershipType
pattern MembershipTypeIgmp = MembershipType' "igmp"

pattern MembershipTypeStatic :: MembershipType
pattern MembershipTypeStatic = MembershipType' "static"

{-# COMPLETE
  MembershipTypeIgmp,
  MembershipTypeStatic,
  MembershipType'
  #-}

instance Prelude.FromText MembershipType where
  parser = MembershipType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MembershipType where
  toText (MembershipType' x) = x

instance Prelude.Hashable MembershipType

instance Prelude.NFData MembershipType

instance Prelude.ToByteString MembershipType

instance Prelude.ToQuery MembershipType

instance Prelude.ToHeader MembershipType

instance Prelude.FromXML MembershipType where
  parseXML = Prelude.parseXMLText "MembershipType"

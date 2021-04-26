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
-- Module      : Network.AWS.WorkMail.Types.MemberType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.MemberType
  ( MemberType
      ( ..,
        MemberTypeGROUP,
        MemberTypeUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MemberType = MemberType'
  { fromMemberType ::
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

pattern MemberTypeGROUP :: MemberType
pattern MemberTypeGROUP = MemberType' "GROUP"

pattern MemberTypeUSER :: MemberType
pattern MemberTypeUSER = MemberType' "USER"

{-# COMPLETE
  MemberTypeGROUP,
  MemberTypeUSER,
  MemberType'
  #-}

instance Prelude.FromText MemberType where
  parser = MemberType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MemberType where
  toText (MemberType' x) = x

instance Prelude.Hashable MemberType

instance Prelude.NFData MemberType

instance Prelude.ToByteString MemberType

instance Prelude.ToQuery MemberType

instance Prelude.ToHeader MemberType

instance Prelude.FromJSON MemberType where
  parseJSON = Prelude.parseJSONText "MemberType"

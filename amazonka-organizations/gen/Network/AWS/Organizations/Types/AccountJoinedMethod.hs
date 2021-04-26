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
-- Module      : Network.AWS.Organizations.Types.AccountJoinedMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.AccountJoinedMethod
  ( AccountJoinedMethod
      ( ..,
        AccountJoinedMethodCREATED,
        AccountJoinedMethodINVITED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccountJoinedMethod = AccountJoinedMethod'
  { fromAccountJoinedMethod ::
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

pattern AccountJoinedMethodCREATED :: AccountJoinedMethod
pattern AccountJoinedMethodCREATED = AccountJoinedMethod' "CREATED"

pattern AccountJoinedMethodINVITED :: AccountJoinedMethod
pattern AccountJoinedMethodINVITED = AccountJoinedMethod' "INVITED"

{-# COMPLETE
  AccountJoinedMethodCREATED,
  AccountJoinedMethodINVITED,
  AccountJoinedMethod'
  #-}

instance Prelude.FromText AccountJoinedMethod where
  parser = AccountJoinedMethod' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccountJoinedMethod where
  toText (AccountJoinedMethod' x) = x

instance Prelude.Hashable AccountJoinedMethod

instance Prelude.NFData AccountJoinedMethod

instance Prelude.ToByteString AccountJoinedMethod

instance Prelude.ToQuery AccountJoinedMethod

instance Prelude.ToHeader AccountJoinedMethod

instance Prelude.FromJSON AccountJoinedMethod where
  parseJSON = Prelude.parseJSONText "AccountJoinedMethod"

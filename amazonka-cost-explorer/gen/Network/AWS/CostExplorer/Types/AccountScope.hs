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
-- Module      : Network.AWS.CostExplorer.Types.AccountScope
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.AccountScope
  ( AccountScope
      ( ..,
        AccountScopeLINKED,
        AccountScopePAYER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccountScope = AccountScope'
  { fromAccountScope ::
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

pattern AccountScopeLINKED :: AccountScope
pattern AccountScopeLINKED = AccountScope' "LINKED"

pattern AccountScopePAYER :: AccountScope
pattern AccountScopePAYER = AccountScope' "PAYER"

{-# COMPLETE
  AccountScopeLINKED,
  AccountScopePAYER,
  AccountScope'
  #-}

instance Prelude.FromText AccountScope where
  parser = AccountScope' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccountScope where
  toText (AccountScope' x) = x

instance Prelude.Hashable AccountScope

instance Prelude.NFData AccountScope

instance Prelude.ToByteString AccountScope

instance Prelude.ToQuery AccountScope

instance Prelude.ToHeader AccountScope

instance Prelude.ToJSON AccountScope where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AccountScope where
  parseJSON = Prelude.parseJSONText "AccountScope"

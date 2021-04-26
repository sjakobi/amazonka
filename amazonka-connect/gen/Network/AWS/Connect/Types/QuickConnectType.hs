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
-- Module      : Network.AWS.Connect.Types.QuickConnectType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QuickConnectType
  ( QuickConnectType
      ( ..,
        QuickConnectTypePHONENUMBER,
        QuickConnectTypeQUEUE,
        QuickConnectTypeUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QuickConnectType = QuickConnectType'
  { fromQuickConnectType ::
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

pattern QuickConnectTypePHONENUMBER :: QuickConnectType
pattern QuickConnectTypePHONENUMBER = QuickConnectType' "PHONE_NUMBER"

pattern QuickConnectTypeQUEUE :: QuickConnectType
pattern QuickConnectTypeQUEUE = QuickConnectType' "QUEUE"

pattern QuickConnectTypeUSER :: QuickConnectType
pattern QuickConnectTypeUSER = QuickConnectType' "USER"

{-# COMPLETE
  QuickConnectTypePHONENUMBER,
  QuickConnectTypeQUEUE,
  QuickConnectTypeUSER,
  QuickConnectType'
  #-}

instance Prelude.FromText QuickConnectType where
  parser = QuickConnectType' Prelude.<$> Prelude.takeText

instance Prelude.ToText QuickConnectType where
  toText (QuickConnectType' x) = x

instance Prelude.Hashable QuickConnectType

instance Prelude.NFData QuickConnectType

instance Prelude.ToByteString QuickConnectType

instance Prelude.ToQuery QuickConnectType

instance Prelude.ToHeader QuickConnectType

instance Prelude.ToJSON QuickConnectType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON QuickConnectType where
  parseJSON = Prelude.parseJSONText "QuickConnectType"

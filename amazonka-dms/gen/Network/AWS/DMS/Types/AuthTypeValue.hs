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
-- Module      : Network.AWS.DMS.Types.AuthTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.AuthTypeValue
  ( AuthTypeValue
      ( ..,
        AuthTypeValueNO,
        AuthTypeValuePassword
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthTypeValue = AuthTypeValue'
  { fromAuthTypeValue ::
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

pattern AuthTypeValueNO :: AuthTypeValue
pattern AuthTypeValueNO = AuthTypeValue' "no"

pattern AuthTypeValuePassword :: AuthTypeValue
pattern AuthTypeValuePassword = AuthTypeValue' "password"

{-# COMPLETE
  AuthTypeValueNO,
  AuthTypeValuePassword,
  AuthTypeValue'
  #-}

instance Prelude.FromText AuthTypeValue where
  parser = AuthTypeValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthTypeValue where
  toText (AuthTypeValue' x) = x

instance Prelude.Hashable AuthTypeValue

instance Prelude.NFData AuthTypeValue

instance Prelude.ToByteString AuthTypeValue

instance Prelude.ToQuery AuthTypeValue

instance Prelude.ToHeader AuthTypeValue

instance Prelude.ToJSON AuthTypeValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthTypeValue where
  parseJSON = Prelude.parseJSONText "AuthTypeValue"

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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UserPoolMfaType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UserPoolMfaType
  ( UserPoolMfaType
      ( ..,
        UserPoolMfaTypeOFF,
        UserPoolMfaTypeON,
        UserPoolMfaTypeOPTIONAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserPoolMfaType = UserPoolMfaType'
  { fromUserPoolMfaType ::
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

pattern UserPoolMfaTypeOFF :: UserPoolMfaType
pattern UserPoolMfaTypeOFF = UserPoolMfaType' "OFF"

pattern UserPoolMfaTypeON :: UserPoolMfaType
pattern UserPoolMfaTypeON = UserPoolMfaType' "ON"

pattern UserPoolMfaTypeOPTIONAL :: UserPoolMfaType
pattern UserPoolMfaTypeOPTIONAL = UserPoolMfaType' "OPTIONAL"

{-# COMPLETE
  UserPoolMfaTypeOFF,
  UserPoolMfaTypeON,
  UserPoolMfaTypeOPTIONAL,
  UserPoolMfaType'
  #-}

instance Prelude.FromText UserPoolMfaType where
  parser = UserPoolMfaType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UserPoolMfaType where
  toText (UserPoolMfaType' x) = x

instance Prelude.Hashable UserPoolMfaType

instance Prelude.NFData UserPoolMfaType

instance Prelude.ToByteString UserPoolMfaType

instance Prelude.ToQuery UserPoolMfaType

instance Prelude.ToHeader UserPoolMfaType

instance Prelude.ToJSON UserPoolMfaType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON UserPoolMfaType where
  parseJSON = Prelude.parseJSONText "UserPoolMfaType"

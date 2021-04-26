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
-- Module      : Network.AWS.MQ.Types.AuthenticationStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.AuthenticationStrategy
  ( AuthenticationStrategy
      ( ..,
        AuthenticationStrategyLDAP,
        AuthenticationStrategySIMPLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The authentication strategy used to secure the broker.
newtype AuthenticationStrategy = AuthenticationStrategy'
  { fromAuthenticationStrategy ::
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

pattern AuthenticationStrategyLDAP :: AuthenticationStrategy
pattern AuthenticationStrategyLDAP = AuthenticationStrategy' "LDAP"

pattern AuthenticationStrategySIMPLE :: AuthenticationStrategy
pattern AuthenticationStrategySIMPLE = AuthenticationStrategy' "SIMPLE"

{-# COMPLETE
  AuthenticationStrategyLDAP,
  AuthenticationStrategySIMPLE,
  AuthenticationStrategy'
  #-}

instance Prelude.FromText AuthenticationStrategy where
  parser = AuthenticationStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthenticationStrategy where
  toText (AuthenticationStrategy' x) = x

instance Prelude.Hashable AuthenticationStrategy

instance Prelude.NFData AuthenticationStrategy

instance Prelude.ToByteString AuthenticationStrategy

instance Prelude.ToQuery AuthenticationStrategy

instance Prelude.ToHeader AuthenticationStrategy

instance Prelude.ToJSON AuthenticationStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuthenticationStrategy where
  parseJSON = Prelude.parseJSONText "AuthenticationStrategy"

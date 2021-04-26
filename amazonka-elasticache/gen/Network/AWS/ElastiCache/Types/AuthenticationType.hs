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
-- Module      : Network.AWS.ElastiCache.Types.AuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.AuthenticationType
  ( AuthenticationType
      ( ..,
        AuthenticationTypeNoPassword,
        AuthenticationTypePassword
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuthenticationType = AuthenticationType'
  { fromAuthenticationType ::
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

pattern AuthenticationTypeNoPassword :: AuthenticationType
pattern AuthenticationTypeNoPassword = AuthenticationType' "no-password"

pattern AuthenticationTypePassword :: AuthenticationType
pattern AuthenticationTypePassword = AuthenticationType' "password"

{-# COMPLETE
  AuthenticationTypeNoPassword,
  AuthenticationTypePassword,
  AuthenticationType'
  #-}

instance Prelude.FromText AuthenticationType where
  parser = AuthenticationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuthenticationType where
  toText (AuthenticationType' x) = x

instance Prelude.Hashable AuthenticationType

instance Prelude.NFData AuthenticationType

instance Prelude.ToByteString AuthenticationType

instance Prelude.ToQuery AuthenticationType

instance Prelude.ToHeader AuthenticationType

instance Prelude.FromXML AuthenticationType where
  parseXML = Prelude.parseXMLText "AuthenticationType"
